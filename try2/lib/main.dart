import 'package:flutter/material.dart';
import 'buttons.dart';
import 'box.dart';
import 'image.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.indigo,
          accentColor: Colors.indigoAccent),
    ));
