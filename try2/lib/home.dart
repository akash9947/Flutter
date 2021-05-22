import 'package:flutter/material.dart';
import 'main.dart';
import 'buttons.dart';
import 'box.dart';
import 'image.dart';
import 'result.dart';

TextEditingController principalc = TextEditingController();
TextEditingController roic = TextEditingController();
TextEditingController termc = TextEditingController();
GlobalKey<FormState> _formkey = GlobalKey<FormState>();

void validate() {
  if (_formkey.currentState.validate()) {
    print("validated");
  } else {
    print("Not validated");
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple interest calculator"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: MIImage(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: TextfieldPrincipal(),
            ),
            TextfieldInterest(),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Term(),
                SizedBox(
                  width: 25.0,
                ),
                Currency(),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              children: [
                Button(),
              ],
            ),
            Result(),
          ],
        ),
      ),
    );
  }
}
