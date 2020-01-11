import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageAssetClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/sumon.JPG');
    Image image = Image(
      image: assetImage,
      width: 500.0,
      height: 150.0,
    );
    return image;
  }
}

class ImageAssetClass2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/stones.jpg');
    Image image = Image(
      image: assetImage,
    );
    return image;
  }
}

class ImageAssetClass3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/icecream.jpg');
    Image image = Image(image: assetImage,
        width: 150.0,
        height: 100.0,);
    return image;
  }
}

class Buttoncreating extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.lightGreen,
          child: Text(
            "simple button",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)),
    );
  }

 void  bookFlight(BuildContext context) {

    var alertdialog=AlertDialog(
                title: Text( "Thank you for save me"),
                  content: Text("My Freedom life"),
    );

    showDialog(context: context,
   /* builder: (BuildContext context){
      return alertdialog;
    }
    */
   builder: (BuildContext context)=>alertdialog
    );
 }

}