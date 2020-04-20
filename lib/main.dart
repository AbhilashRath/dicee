import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.teal,
        ),
        body: Dice(),
      ),
    ));


class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  static int ldice = 6;
  static int rdice = 6;
  int total = ldice + rdice;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ldice = Random().nextInt(6) + 1;
                      rdice = Random().nextInt(6) + 1;
                      total = ldice + rdice;
                    });
                    print("Left Button Pressed!!!");
                  },
                  child: Image.asset("images/dice$ldice.png"),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ldice = Random().nextInt(6) + 1;
                      rdice = Random().nextInt(6) + 1;
                      total = ldice + rdice;
                    });
                    print("Right Button Pressed!!!");
                  },
                  child: Image.asset("images/dice$rdice.png"),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "$total", style: TextStyle(fontSize: 120, color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
