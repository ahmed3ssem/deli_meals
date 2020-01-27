import 'package:deli_meals/widget/main_drwaer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Center(
      child: Text("Messi♥"),
      ),
    );
  }
}
