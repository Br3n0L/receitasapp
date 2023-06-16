import 'package:flutter/material.dart';

import '../models/meals.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes das Refeições'),
      ),
      body: const Center(
        child: Text('Detalhes das Refeições'),
      ),
    );
  }
}
