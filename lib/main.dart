import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
} // this gets rebuilt using teh persistent state

class _MyAppState extends State<MyApp> {
  // State is a generic class. It is persistent. It is attached to the related thing.
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s you\'re favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print("Answer 2 Pressed");
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print("Answer 3 Pressed"),
            ),
          ],
        ),
      ),
    );
  }
}
