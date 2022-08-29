import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {

  static const routeName = '/meals';

  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeName['title'];
    final categoryId = routeName['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text(
          'The Recepe For The Category'
        ),
      ),
    );
  }
}
