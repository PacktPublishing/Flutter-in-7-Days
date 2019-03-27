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

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  void init() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
        CurvedAnimation(curve: Curves.linear, parent: animationController));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FadeTransition(
        opacity: animation,
        child: Container(
          height: height,
          width: width,
          child: Card(
            color: Colors.amber,
            child: Center(child: Text("Hey my name is Aman")) ,
          ),
        ),
      ),
    );
  }
}
