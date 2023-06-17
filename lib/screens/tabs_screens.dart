import 'package:curso_cooder_exe_aulas/screens/categories_screen.dart';
import 'package:curso_cooder_exe_aulas/screens/favorites_foods.dart';
import 'package:flutter/material.dart';

class TabScreens extends StatelessWidget {
  const TabScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos cozinhar?'),
        ),
        body: const TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteFoods(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ]),
      ),
    );
  }
}
