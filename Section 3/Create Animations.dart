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
    return AnimatedBuilder(
      animation: animation,
      builder: (builder, child) {
        print(animation.value);
        return Scaffold(
          body: Center(
            child: Card(
              child: Container(
                width: width * animation.value,
                height: height * animation.value,
                color: Colors.teal,
                child: Icon(
                  Icons.face,
                  size: 100.0 * animation.value,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
