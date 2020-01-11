import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Imageassets.dart';

class MyDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: new Center(
            child: new Text("DASHBOARD", textAlign: TextAlign.center)),
        leading: new IconButton(
          icon: new Icon(Icons.menu),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 40, bottom: 10),
            child: Center(
                child: RichText(
              text: TextSpan(
                text: 'Welcome ',
                style: TextStyle(color: Colors.black, fontSize: 30),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Sumon',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                      )),
                ],
              ),
            )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, bottom: 10),
            child: Center(
              child: Text(simpledatetimr(), textAlign: TextAlign.center),
            ),
          ),
          Container(
            child: Padding(padding: EdgeInsets.all(10)),
          ),
          /* Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                        //color: const Color(0xFF66BB6A),
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                        ),]
                    ),
                    child: new FlutterLogo(
                      size: 200.0,
                    )
                ),
                */
          Container(
              padding: EdgeInsets.only(top: 50),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(child: Column(children: <Widget>[
                      Text(
                      "Available Balance",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                      SizedBox(
                        height: 11.0,
                      ),],),),

                    Center(
                      child: SizedBox(
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          Center(
                            child: Container(
                              //width: 50.0,
                              //height: 50.0,
                             // margin: const EdgeInsets.only(left: 50),
                              padding:  EdgeInsets.all(5.0),
                              //I used some padding without fixed width and height
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,// You can use like this way or like the below line
                                //borderRadius: new BorderRadius.circular(30.0),
                                color: Colors.green,
                              ),
                            ),),
                          Flexible(child: Text("100000000/-")),
                        ],
                      ),
                    ),),

                   Center(
                       child: SizedBox(
                     width: 100,
                         child: FlatButton(

                      color: Colors.orange,
                      padding: EdgeInsets.all(10.0),

                       child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                           Center(child:Text("Full details",textAlign: TextAlign.center,)),
                           Flexible(child: Icon(Icons.forward)),
                       ],
                     ),
                   ),)),


                  ],
                ),
              )),
          Container(padding: EdgeInsets.only(top: 10)),
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2, // takes 30% of available width
                  child:Column(children: <Widget>[
                    ImageAssetClass(),
                    Text("Transfer\nFunds",textAlign: TextAlign.center,)
                  ],),
                ),
                Expanded(
                  flex: 2, // takes 30% of available width
                  child:Column(children: <Widget>[
                    ImageAssetClass2(),
                    Text("Pay\nBills",textAlign: TextAlign.center,)
                  ],),
                ),
                Expanded(
                  flex: 2, // takes 30% of available width
                  child:Column(children: <Widget>[
                    ImageAssetClass3(),
                    Text("Make\n Payment",textAlign: TextAlign.center,)
                  ],),
                ),
                Expanded(
                  flex: 2, // takes 30% of available width
                  child:Column(children: <Widget>[
                    ImageAssetClass4(),
                    Text("Mobile\nRecharge",textAlign: TextAlign.center,)
                  ],),
                )
              ],
            ),
          ),
             Container(padding: EdgeInsets.only(top: 10)),
         Container(
            padding: EdgeInsets.only(top:5),
             height: 500,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:getListView()
          ),

        ],
      ),
    );
  }

  String simpledatetimr() {
    DateTime now = DateTime.now();
    var time = new DateFormat("hh:mm").format(now);
    var date = new DateFormat("dd-MM-yyyy").format(now);
    var datetime = time + " AM, " + date;
    return "Last Login: " + datetime;
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
