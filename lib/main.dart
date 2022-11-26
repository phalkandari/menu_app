import 'package:flutter/material.dart';
import 'package:menu_app/models/food_model.dart';

import 'widgets/food_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Food> foods = [
    Food(
        name: "Pizza",
        image: "assets/pizza.jpg",
        description: "a dish of Italian origin"),
    Food(name: "Burger", image: "assets/burger.jpg"),
    Food(name: "Pasta", image: "assets/pasta.jpg"),
    Food(name: "Sushi", image: "assets/suchi.jpg"),
    Food(name: "Biryani", image: "assets/biryani.jpg"),
  ];

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
          children: foods.map((food) => FoodCard(food: food)).toList(),
        ),
      ),
    );
  }
}
