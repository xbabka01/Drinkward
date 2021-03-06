import 'package:drinkward/models/models.dart';
import 'package:flutter/material.dart';
import 'dart:math';

String name = "";
String city = "";
List<Event> events = [];
int barIdentifier = 0;

class BarCardView extends StatefulWidget {
  BarCardView(String param1, String param2) {
    name = param1;
    city = param2;
    events = [];
  }
  @override
  _BarCardView createState() => _BarCardView();
}

class _BarCardView extends State<BarCardView> {
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    var rng1 = random.nextInt(10) + 3;
    var rng2 = random.nextInt(10) + 2;
    var rng3 = random.nextInt(10) + 1;

    return Center(
      widthFactor: double.infinity,
      child: new Card(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.house_rounded,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            size: 20,
                          ),
                          Text(
                            city,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        Row(
                            children: [
                              Text("Finlandia $rng1"),
                            ]
                        ),
                        Row(
                            children: [
                              Text("Rum $rng2"),
                            ]
                        ),
                        Row(
                            children: [
                              Text("Absinth $rng3"),
                            ]
                        ),
                      ],
                    ),
                  )
                )
              ],
            ),
          )
      ),
    );
  }
}
