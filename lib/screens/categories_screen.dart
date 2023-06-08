import 'package:flutter/material.dart';
import '../models/category.dart';

import 'categories_meals_screnn.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(
      {super.key,
      required this.category}); // Adicione {} para tornar o argumento opcional

  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return CategoriesMealsScreen(category: category);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
