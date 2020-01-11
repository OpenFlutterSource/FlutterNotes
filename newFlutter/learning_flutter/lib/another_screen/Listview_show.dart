import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Image_asset_class.dart';

class Listview_items extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var listview =ListView(children: <Widget>[
      ListTile(leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny)),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("alarm"),
      ),

      Text("this text is a part of of listview"),

      Container(
          alignment: Alignment.center,color: Colors.red,
          height: 50.0,
          child: ImageAssetClass2()),
      Container(

      )
    ],);
    return listview;
  }

}