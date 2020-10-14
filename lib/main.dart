import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FoodCard.dart';
import 'HomeText.dart';
import 'InputBox.dart';

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
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: 200,
                    height: 54,
                    child: RaisedButton(
                      color: Color(0xFFfeda45),
                      child: Text(
                        "Scan Qr Code",
                        style:
                            TextStyle(color: Color(0xFFfefefb), fontSize: 20.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                  ),
                ),
              ],
            ),
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
