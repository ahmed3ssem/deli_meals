import 'package:deli_meals/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryId,this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Text(categoryMeals[index].title);

      },itemCount: categoryMeals.length,),
    );
  }
}
