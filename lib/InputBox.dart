import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 5,
            child: Container(
              child: TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                cursorColor: Colors.white,
                cursorRadius: Radius.circular(50.0),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: "enter Restauran name"),
              ),
            ),
          ),
          Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }
}
