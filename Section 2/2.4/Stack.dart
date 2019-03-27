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
        body: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  elevation: 5.0,
                  child: Text(
                    "Learn Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            FlutterLogo()
          ],
        ),
      ),
    );
  }
}
