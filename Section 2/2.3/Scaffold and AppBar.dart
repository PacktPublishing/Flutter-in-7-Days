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
        appBar: AppBar(
          title: Text("The title of the app"),
          centerTitle: true,
          actions: <Widget>[
            Icon(Icons.mic),
            Icon(Icons.mic_none),
          ],
          leading: Icon(Icons.speaker),
          elevation: 5.0,
        ),
        backgroundColor: Colors.white,
        body: Text("Hello"),
        drawer: Drawer(
          child: Text("I am the drawer"),
        ),
        endDrawer: Drawer(
          child: Text("I am the right drawer"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        // bottomSheet: BottomSheet(
        //   onClosing: () {},
        //   builder: (BuildContext context) {
        //     return Container(
        //       child: Text("Hello"),
        //     );
        //   },
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   fixedColor: Colors.teal,
        //   currentIndex: 0,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         title: Text("Home"),
        //         backgroundColor: Colors.teal),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       title: Text("Home"),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       title: Text("Home"),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       title: Text("Home"),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
