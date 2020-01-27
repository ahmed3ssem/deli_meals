import 'package:deli_meals/screens/categories_screen.dart';
import 'package:deli_meals/screens/favourites_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("Messi"),
        bottom: TabBar(tabs: <Widget>[
          Tab(icon: Icon(Icons.category),text: "Category",),
          Tab(icon: Icon(Icons.star),text: "Favourites",),
        ]),
      ),
      body: TabBarView(children: <Widget>[
        CategoriesScreen(),
        FavouritesScreen()
      ]),
    )
    );
  }
}
