import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  final String id;

  MealDetailScreen(this.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messi"),
      ),
      body: Center(
        child: Text("Messi $id"),
      ),
    );
  }
}
