import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  HomeText({@required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Center(
        child: Container(
          child: Text(
            "$text",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
