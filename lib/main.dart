import 'package:assignment/text_control.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'My App',
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: TextControl(),
            ),
          ],
        ),
      ),
    );
  }
}
