import 'package:flutter/material.dart';
import 'dart:math';
import 'package:assignment/text.dart';

int getRandomPosition({int min = 0, required int max}) {
  final _random = Random();
  return min + _random.nextInt(max - min);
}

class TextControl extends StatefulWidget {
  final int initPosition = 0;

  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  List<String> _textList = const [
    'India',
    'Australia',
    'New Zealand',
    'England',
  ];

  late int _currentPosition;

  @override
  void initState() {
    _currentPosition = widget.initPosition;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextDisplay(
          displayText: _textList[_currentPosition],
        ),
        Container(
          margin: EdgeInsets.all(16.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _currentPosition = getRandomPosition(
                    max: _textList.length
                );
              });
            },
            child: Text('Change Text'),
          ),
        )
      ],
    );
  }
}