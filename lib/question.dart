import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quetext;

  Question(this.quetext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(60.0),
      child: Text(
        quetext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
