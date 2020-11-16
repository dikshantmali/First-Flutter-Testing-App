import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _queindex = 0;
  void _answerquestion() {
    setState(() {
      _queindex = _queindex + 1;
    });

    print(_queindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Your Favourite Food',
      'Your Favourite Actor',
      'Your Favorite Animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test Questions"),
        ),
        body: Column(
          children: [
            Question(questions[_queindex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerquestion,
            ),
          ],
        ),
      ),
    );
  }
}
