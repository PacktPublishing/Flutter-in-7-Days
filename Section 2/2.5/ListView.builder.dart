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
          body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("List tile no $index"),
          );
        },
        itemCount: 20,
      )),
    );
  }
}
