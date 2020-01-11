import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Image_asset_class.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        // MaterialApp is the parent of center and center widget is parent of container widget
        //if we want to make sense of container widget to a app we use it as child class and customise it
        child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
//		    width: 200.0,
//		    height: 100.0,
		      margin: EdgeInsets.only( top: 50.0),// only use for margin of an application
          padding: EdgeInsets.all(20),
         child:Column( children: <Widget>[

           Text("row widget deadpack",

             textDirection: TextDirection.ltr,
             style: TextStyle(
                 decoration: TextDecoration.none,
                 fontStyle: FontStyle.italic,
                 fontSize: 20.0,
                 fontFamily: "deadpack",
                 fontWeight: FontWeight.w500,
                 color: Colors.white),

           )
           ,
           Text("row widget Raleway",
             textDirection: TextDirection.ltr,
             style: TextStyle(
                 decoration: TextDecoration.none,
                 fontStyle: FontStyle.italic,
                 fontSize: 30.0,
                 fontFamily: "Raleway",
                 fontWeight: FontWeight.w700,
                 color: Colors.black38),
           ),
           Text("row widget Streamzy",
             textDirection: TextDirection.ltr,
             style: TextStyle(
                 decoration: TextDecoration.none,
                 fontStyle: FontStyle.italic,
                 fontSize: 30.0,
                 fontFamily: "Streamzy",
                 color: Colors.white),
           ),
           ImageAssetClass(),
           Row(children: <Widget>[
             Expanded(child:ImageAssetClass2()),
             Expanded(child:ImageAssetClass3())

           ],),
           Buttoncreating(),
         ])
    ));
    ;
  }
}
