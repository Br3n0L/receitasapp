import 'package:curso_cooder_exe_aulas/models/category.dart';
import 'package:curso_cooder_exe_aulas/screens/categories_meals_screnn.dart';
import 'package:curso_cooder_exe_aulas/screens/categories_screen.dart';
import 'package:curso_cooder_exe_aulas/screens/meal_detail_screen.dart';
import 'package:curso_cooder_exe_aulas/utilis/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: 'Releway',
          canvasColor: const Color.fromRGBO(225, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleSmall: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              )),
        ),
        initialRoute: '/',
        routes: {
          AppRoutes.HOME: (context) => const CategoriesScreen(),
          AppRoutes.MEAL_DETAIL: (context) => const MealDetailScreen(),
          // AppRoutes.CATEGORIES_MEALS: (context)=> const CategoriesMealsScreen(category: category), Entender essa questão do category required.
        });
  }
}
