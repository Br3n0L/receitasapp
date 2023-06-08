import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final Category category;

  const CategoriesMealsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}
