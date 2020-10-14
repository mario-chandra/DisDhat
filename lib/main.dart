import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FoodCard.dart';
import 'HomeText.dart';
import 'InputBox.dart';
import 'ScanButton.dart';

void main() {
  runApp(Disdat());
}

class Disdat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
        primaryColor: Color(0xFFcf240a),
        scaffoldBackgroundColor: Color(0xFFcf240a),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text("disdhat"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          HomeText(
            text: "Find The Restaurant",
          ),
          InputBox(),
          HomeText(
            text: "Or",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ScanButton(),
          ),
          HomeText(
            text: "Hot Now",
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FoodCard(),
              ),
              Expanded(
                child: FoodCard(),
              ),
              Expanded(
                child: FoodCard(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
