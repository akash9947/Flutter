import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';

class TextfieldPrincipal extends StatefulWidget {
  const TextfieldPrincipal({
    Key key,
  }) : super(key: key);

  @override
  _TextfieldPrincipalState createState() => _TextfieldPrincipalState();
}

class _TextfieldPrincipalState extends State<TextfieldPrincipal> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return TextFormField(
      controller: principalc,
      style: textStyle,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter principal ammount';
        }
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          errorStyle: TextStyle(color: Colors.yellowAccent, fontSize: 15.0),
          labelStyle: textStyle,
          border: OutlineInputBorder(),
          labelText: 'Principal',
          hintText: "Enter Principal e.g. 12000"),
    );
  }
}

class TextfieldInterest extends StatefulWidget {
  const TextfieldInterest({
    Key key,
  }) : super(key: key);

  @override
  _TextfieldInterestState createState() => _TextfieldInterestState();
}

class _TextfieldInterestState extends State<TextfieldInterest> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return TextFormField(
      controller: roic,
      style: textStyle,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter The rate of interest';
        }
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          errorStyle: TextStyle(color: Colors.yellowAccent, fontSize: 15.0),
          labelStyle: textStyle,
          border: OutlineInputBorder(),
          labelText: 'Rate of interest',
          hintText: "Rate of interest"),
    );
  }
}

class Term extends StatefulWidget {
  const Term({
    Key key,
  }) : super(key: key);

  @override
  _TermState createState() => _TermState();
}

class _TermState extends State<Term> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return Expanded(
      child: TextFormField(
        controller: termc,
        style: textStyle,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Please enter Year"s of invesment';
          }
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            errorStyle: TextStyle(color: Colors.yellowAccent, fontSize: 15.0),
            labelStyle: textStyle,
            border: OutlineInputBorder(),
            labelText: 'Term',
            hintText: "Years of invesment"),
      ),
    );
  }
}
