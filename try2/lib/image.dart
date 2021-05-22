import 'package:flutter/material.dart';
import 'main.dart';

class MIImage extends StatelessWidget {
  const MIImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image(
        image: AssetImage("assets/mi2.png"),
        height: 125.0,
        width: 125.0,
      ),
    );
  }
}
