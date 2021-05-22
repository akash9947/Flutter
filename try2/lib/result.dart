import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';

var displayResult = '';

class Result extends StatefulWidget {
  const Result({
    Key key,
  }) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        displayResult,
        style: textStyle,
      ),
    );
  }
}
