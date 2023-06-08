import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        home: const CategoriesScreen());
  }
}
