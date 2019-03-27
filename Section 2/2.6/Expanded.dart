import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Card(
              child: Text("This is card no 1"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Card(
              child: Text("This is card no 2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Card(
              child: Text("This is card no 3"),
            ),
          ),
        ],
      )),
    );
  }
}
