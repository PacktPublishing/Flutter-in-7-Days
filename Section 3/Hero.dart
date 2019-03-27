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
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlineButton(
              child: Text("Next Page"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Logo()));
              },
            ),
            Hero(
              tag: "FlutterLogo",
              child: FlutterLogo(
                size: 100.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animations"),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(
          tag: "FlutterLogo",
          child: FlutterLogo(
            size: 300.0,
          ),
        ),
      ),
    );
  }
}
