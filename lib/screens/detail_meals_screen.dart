import 'package:flutter/material.dart';

class DetailMealsScreen extends StatelessWidget {

  static const routeName = '/detail-meal';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$mealId',
        ),
      ),
      body: Center(
        child: Text('The Meals'),
      ),
    );
  }
}
