import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recepes'),
      ),
      body: Center(
        child: Text(
          'The Recepe For The Category'
        ),
      ),
    );
  }
}
