//class that describes a Widget
import 'package:flutter/material.dart';
import 'package:menu_app/models/food_model.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard({required this.food, super.key});

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
          Column(
            children: [
              Text(
                food.name,
                style: TextStyle(fontSize: 26),
              ),
              Text(
                food.description ?? "", //null-aware
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), //container not image
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                food.image,
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
