import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "Hey my name is Aman";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network("<link to the image online>"),
              Chip(
                label: Text(
                  str,
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.bold),
                ),
              ),
              FlatButton(
                child: Text("Press Me"),
                onPressed: () {},
              ),
              Text("Hello"),
              FlatButton(
                child: Text("Press Me"),
                onPressed: () {},
              ),
              Text("Hello"),
              FlatButton(
                child: Text("Press Me"),
                onPressed: () {},
              ),
              Text("Hello"),
              FlatButton(
                child: Text("Press Me"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
