import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/meal_items.dart';

class MealsScreen extends StatelessWidget {

  static const routeName = '/meals';

  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeName['title'];
    final categoryId = routeName['id'];
    final meals = DUMMY_MEALS.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItems(
            id: meals[index].id,
            title: meals[index].title,
            imageUrl: meals[index].imageUrl,
            duration: meals[index].duration,
            affordability: meals[index].affordability,
            complexity: meals[index].complexity,
          );
        },
        itemCount: meals.length,
      ),
    );
  }
}
