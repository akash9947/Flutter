import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';
import 'result.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

String _calculateTotalReturn() {
  double principal = double.parse(principalc.text);
  double roi = double.parse(roic.text);
  double term = double.parse(termc.text);
  double totalAmountPyable = principal + (principal * roi * term);
  String result =
      "After $term years, your invesment will be worth $totalAmountPyable";
  return result;
}

void _reset() {
  principalc.text = '';
  roic.text = '';
  termc.text = '';
  displayResult = '';
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  validate();
                  displayResult = _calculateTotalReturn();
                });
              },
              child: Text(
                "Calculate",
                style: textStyle,
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  onPressed: () {
                    setState(() {
                      _reset();
                    });
                  },
                  child: Text(
                    "Reset",
                    style: textStyle,
                  )))
        ],
      ),
    );
  }
}

String dropdownValue = 'Rupes';

class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return Expanded(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: textStyle, //(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Rupes', 'Taka', 'Dollar', 'Euro']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
