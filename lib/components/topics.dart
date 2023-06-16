import 'package:flutter/material.dart';

import '../models/meals.dart';

class TopicRecipeTitle extends StatelessWidget {
  const TopicRecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Text(
        'Ingredientes',
      ),
    );
  }
}

class TopicRecipeIngredients extends StatelessWidget {
  const TopicRecipeIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Container(
      width: 300,
      height: 200,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        itemCount: meal.ingredients.length,
        itemBuilder: ((context, int index) {
          return Card(
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              child: Text(meal.ingredients[index]),
            ),
          );
        }),
      ),
    );
  }
}
