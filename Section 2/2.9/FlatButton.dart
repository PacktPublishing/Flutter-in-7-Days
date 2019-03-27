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
          body: Center(
        child: FlatButton(
          child: Text("Press Me"),
          onPressed: () {},
          color: Colors.teal,
          highlightColor: Colors.yellow,
          onHighlightChanged: (b) {
            print(b);
          },
          colorBrightness: Brightness.dark,
          splashColor: Colors.tealAccent,
        ),
      )),
    );
  }
}
