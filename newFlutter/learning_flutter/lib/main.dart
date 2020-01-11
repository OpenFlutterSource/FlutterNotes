import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_flutter/another_screen/first_screen.dart';

import 'another_screen/Home.dart';
import 'another_screen/Listview_show.dart';

void main(){
  runApp( MyFlutterapp());

}

class MyFlutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My first app",
        home:
        Scaffold(
          appBar:AppBar(title: Text("show my app"),),
         // body:First_Screen(),
          body:getListView(),
          backgroundColor: Colors.brown,
        )
       // Home(),
    );
  }

  Widget getListView() {
    var listItems = getListElements();

    var listView = ListView.builder(
        itemBuilder: (context, index){
          if(index<=99){
          return ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text(listItems[index]),
            onTap: () {
              debugPrint('${listItems[index]} was tapped');
            },
          );}
        }
    );

    return listView;
  }

  getListElements() {
   var items = List<String>.generate(100, (counter) => "Item $counter");
   return items;
 }



}
