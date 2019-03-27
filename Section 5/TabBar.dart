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
        theme: ThemeData(brightness: Brightness.dark), home: Main());
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  }

  Widget card(String text) {
    return Card(
      color: Colors.amber,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  }

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Hey i am card no 1"),
          card("Hey i am card no 2"),
          card("Hey i am card no 3"),
          card("Hey i am card no 4"),
          card("Hey i am card no 5"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true  ,
        tabs: <Widget>[
          tab("Home", Icon(Icons.home)),
          tab("Light", Icon(Icons.lightbulb_outline)),
          tab("Atm", Icon(Icons.atm)),
          tab("Signal", Icon(Icons.signal_wifi_off)),
          tab("Wifi", Icon(Icons.wifi)),
        ],
      ),
    );
  }
}
