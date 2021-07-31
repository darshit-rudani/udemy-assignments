import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final String displayText;

  TextDisplay({this.displayText = 'Default Text'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24.0),
      child: Text(
        displayText,
        style: TextStyle(
            fontSize: 24.0
        ),
      ),
    );
  }
}