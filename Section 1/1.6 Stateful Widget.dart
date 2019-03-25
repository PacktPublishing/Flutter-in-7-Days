import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "Hello";

  @override
  void initState() {
    super.initState();
    print("I was started");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(str),
          ),
          FlatButton(
            child: Text("Press Me"),
            onPressed: () {
              str = "Hi";
              print(str);
              setState(() {});
            },
          )
        ],
      ),
    ));
  }
}
