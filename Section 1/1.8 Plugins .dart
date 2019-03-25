import 'package:flutter/material.dart';
import 'package:system_shortcuts/system_shortcuts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Home"),
          onPressed: (){
            SystemShortcuts.home();
          },
        ),
      ),
    ));
  }
}
