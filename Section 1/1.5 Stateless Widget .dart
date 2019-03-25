import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Hi"),
          Center(
            child: FlatButton(
              child: Text("Press Me"),
              onPressed: (){
                print('Hi');
              },
            ),
          )
        ],
      ),
    );
  }
}
