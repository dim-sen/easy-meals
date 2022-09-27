import 'package:easy_meals/models/dummy_data.dart';
import 'package:easy_meals/models/meal.dart';
import 'package:easy_meals/screens/detail_meals_screen.dart';
import 'package:easy_meals/screens/meals_screen.dart';
import 'package:easy_meals/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import '../screens/detail_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _favoriteMeals = [];

  void _toggleFavorite(String mealId) {
    final existIndex = _favoriteMeals.indexWhere(
        ((element) => element.id == mealId));

    if (existIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(
            DUMMY_MEALS.firstWhere((element) => element.id == mealId),
        );
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.lightGreen,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(_favoriteMeals),
        MealsScreen.routeName: (context) => MealsScreen(),
        DetailMealsScreen.routeName: (context) => DetailMealsScreen(_toggleFavorite, _isMealFavorite),
      },
    );
  }
}