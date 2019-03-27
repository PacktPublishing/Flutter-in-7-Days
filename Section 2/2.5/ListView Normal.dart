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
          body: ListView(
        itemExtent: 50.0,
        children: <Widget>[
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
          ListTile(title: Text("Hello")),
        ],
      )),
    );
  }
}
