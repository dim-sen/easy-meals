import 'package:easy_meals/screens/detail_meals_screen.dart';
import 'package:easy_meals/screens/meals_screen.dart';
import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/detail_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
        '/': (context) => CategoriesScreen(),
        MealsScreen.routeName: (context) => MealsScreen(),
        DetailMealsScreen.routeName: (context) => DetailMealsScreen(),
      },
    );
  }
}