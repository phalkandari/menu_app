import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final menu = {
    "Pizza": "assets/pizza.jpg",
    "Burger": "assets/burger.jpg",
    "Pasta": "assets/pasta.jpg",
    "Sushi": "assets/suchi.jpg",
    "Biryani": "assets/biryani.jpg",
  };

  // List<Food> foods = [
  //   Food(name: "Pizza", image: "assets/pizza.jpg"),
  //   Food(name: "Burger", image: "assets/burger.jpg")
  // ];

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
          children: menu.keys
              .map((key) => FoodCard(name: key, url: menu[key]!))
              .toList(),
        ),
      ),
    );
  }
}

class Food {
  final String name;
  final String image;

  Food({
    required this.name,
    required this.image,
  });
}

class FoodCard extends StatelessWidget {
  final String name;
  final String url;

  FoodCard({required this.name, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 26),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), //container not image
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                url,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
