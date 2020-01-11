import 'dart:math';

import 'package:flutter/material.dart';

class First_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.blueAccent,
      child: Center(
        child: Text(RandomnumGen(),textDirection: TextDirection.ltr
          , style:TextStyle(color: Colors.white,fontSize: 40.0,wordSpacing: 10,fontStyle: FontStyle.italic),),
      ),
    );
  }

  //creating method
  String RandomnumGen(){
    var rand=Random();
    var number=rand.nextInt(10);
    return "the lucky number is $number";
  }

}