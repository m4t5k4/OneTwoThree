import 'package:flutter/material.dart';

typedef void MyCallback(String number);

class NumberButtonWidget extends StatelessWidget {
  final String number;
  final MyCallback onButtonPressed;

  NumberButtonWidget({this.number, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: FlatButton(
          height: 50,
          color: Colors.blue,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          onPressed: () {
            onButtonPressed(number);
          },
          child: SizedBox(
            child: Text(
              number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
      ),
    );
  }
}
