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
        body: Card(
          color: Colors.amberAccent,
          elevation: 5.0,
          shape: Border.all(
            color: Colors.red
          ),
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                FlutterLogo(
                  size: 100.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Hello"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
