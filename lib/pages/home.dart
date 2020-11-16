import 'package:flutter/material.dart';
import 'package:one_two_three/widgets/numberbutton.dart';

class HomePage extends StatelessWidget {
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
                "34 +22 =",
                style: TextStyle(fontSize: 50.0, color: Colors.black),
              ),
              new SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "7",
                  ),
                  NumberButtonWidget(
                    number: "8",
                  ),
                  NumberButtonWidget(
                    number: "9",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "4",
                  ),
                  NumberButtonWidget(
                    number: "5",
                  ),
                  NumberButtonWidget(
                    number: "6",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "1",
                  ),
                  NumberButtonWidget(
                    number: "2",
                  ),
                  NumberButtonWidget(
                    number: "3",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumberButtonWidget(
                    number: "0",
                  ),
                  NumberButtonWidget(
                    number: "x",
                  ),
                  NumberButtonWidget(
                    number: "?",
                  ),
                ],
              ),
              new SizedBox(height: 50),
              Text(
                "Score: 2",
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
