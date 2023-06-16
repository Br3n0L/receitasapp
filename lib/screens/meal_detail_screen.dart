import 'package:curso_cooder_exe_aulas/components/topics.dart';
import 'package:flutter/material.dart';

import '../models/meals.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const TopicRecipeTitle(),
          const TopicRecipeIngredients(),
        ],
      ),
    );
  }
}
