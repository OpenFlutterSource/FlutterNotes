import 'package:flutter/material.dart';

import 'CurrencyConvert/ConvertForm.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "converter app",
    home:ConvertForm(),
      //the theme can be global or inside
      //here wecreate global theme
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.indigo,
          accentColor: Colors.indigoAccent
      )
  ));
}
/*
//statefull widget is used for dynamic ui design
class Favoritecity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // this class is declear private
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<Favoritecity> {
  var nameCity = "";
  var _currencies = ['Rupees', 'Dollars', 'Pounds','taka', 'Others'];
  var _currentItemSelected = 'Dollars';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Currency convert"),
      ),

      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              //onSubmitted
              onChanged: (String userInput) {
                setState(() {
                  debugPrint(
                      "set State is called, this tells framwork to redraw the FavCity widget");
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              elevation: 8,
              hint: Text("Currency show"),
              items:_currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String newValueSelected) {
                // Your code to execute, when a menu item is selected from drop down
                _onDropDownItemSelected(newValueSelected);
              },

              value: _currentItemSelected,

            ),

            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your current city is $nameCity",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
 */


