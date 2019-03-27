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
  bool first;
  void init() {
    super.initState();
    first = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: FlatButton(
                child: Text("Animate"),
                onPressed: () {
                  setState(() {
                    first = !first;
                  });
                },
              ),
            ),
            AnimatedCrossFade(
              crossFadeState:
                  first ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: Duration(seconds: 2),
              firstChild: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 100.0,
              ),
              secondChild: FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
