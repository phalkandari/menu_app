import 'package:flutter/material.dart';
import 'package:menu_app/models/food_model.dart';

import 'widgets/food_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Menu"),
        ),
        body: ListView(
          children: Food.foods.map((food) => FoodCard(food: food)).toList(),
        ),
      ),
    );
  }
}
