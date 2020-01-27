import 'package:deli_meals/widget/main_drwaer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget{
  @override
  SettingsScreenState createState()=> SettingsScreenState();
}
class SettingsScreenState extends State<SettingsScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTitle(String title, bool value , String subTitle,Function updateValue){
    return SwitchListTile(
        title: Text(title),
        value: value,
        subtitle: Text(subTitle) ,
        onChanged: updateValue
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Adjust your meal selection",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTitle("Gluten Free",_glutenFree,"Only include gluten-free meals",(newValue){setState(() {
                    _glutenFree = newValue;
                  });}),
                  _buildSwitchListTitle("Lactose Free",_lactoseFree,"Only include Lactoe-free meals",(newValue){setState(() {
                    _lactoseFree = newValue;
                  });}),
                  _buildSwitchListTitle("Vegetarian",_vegetarian,"Only include vegetarian meals",(newValue){setState(() {
                    _vegetarian = newValue;
                  });}),
                  _buildSwitchListTitle("Vegan",_vegan,"Only include vegan meals",(newValue){setState(() {
                    _vegan = newValue;
                  });}),
                ],
              )
          )
        ],
      )
    );
  }
}
