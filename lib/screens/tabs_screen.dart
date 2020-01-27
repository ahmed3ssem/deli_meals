import 'package:deli_meals/screens/categories_screen.dart';
import 'package:deli_meals/screens/favourites_screen.dart';
import 'package:deli_meals/widget/main_drwaer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  final List<Map<String,Object>> _pages = [
  {'Page': CategoriesScreen() , 'title':'Categories'},
  {'Page':FavouritesScreen(), 'title':'Favourite'}
  ];

  int _selectPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectPageIndex]['title']),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _pages[_selectPageIndex]['Page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectPageIndex,
          //type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text("Category"),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text("Favourites"),
            ),
          ],
    ),
    );
  }
}
