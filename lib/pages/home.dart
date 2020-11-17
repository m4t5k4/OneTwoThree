import 'dart:math';

import 'package:flutter/material.dart';
import 'package:one_two_three/widgets/numberbutton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random rng = new Random();
  String _operation = "";
  int _result;
  String _answer = "";
  int _score;

  @override
  void initState() {
    super.initState();
    int a;
    int b;
    var list = random(a, b);
    this._operation = list[0].toString() + " + " + list[1].toString() + " = ";
    this._score = 0;
  }

  List<int> random(a, b) {
    a = rng.nextInt(80);
    b = rng.nextInt(80);
    if (a + b > 100) {
      random(a, b);
    } else {
      var list = new List<int>();
      list.add(a);
      list.add(b);
      return list;
    }
  }

  void _onButtonPressed(number) {
    if (number == "x") {
      setState(() {
        this._answer = this._answer.substring(0, this._answer.length - 1);
      });
    } else if (number == "?") {
      //check answer
    } else {
      setState(() {
        this._answer = this._answer + number.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("One two three"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _operation + _answer,
                style: TextStyle(fontSize: 50.0, color: Colors.black),
              ),
              new SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "7",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "8",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "9",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "4",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "5",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "6",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "1",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "2",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "3",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "0",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "x",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                  NumberButtonWidget(
                    number: "?",
                    onButtonPressed: (number) {
                      _onButtonPressed(number);
                    },
                  ),
                ],
              ),
              new SizedBox(height: 50),
              Text(
                "Score: " + _score.toString(),
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
