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
          body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("List Tile No :- ${index + 1}"),
          );
        },
        itemCount: 30,
        separatorBuilder: (context, index) {
          if ((index + 1) % 5 == 0) {
            return ListTile(
              title: Text("${index + 1}"),
              selected: true,
            );
          } else {
            return Container();
          }
        },
      )),
    );
  }
}
