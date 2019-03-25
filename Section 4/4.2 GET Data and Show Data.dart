import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "link to the text/json/any other file";
  http.Response data;
  bool load;
  @override
  void initState() {
    super.initState();
    fetchData();
    load = true;
  }

  fetchData() async {
    data = await http.get(url);
    load = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ListView(
      children: <Widget>[
        load ? CircularProgressIndicator() : Text(data.toString()),
      ],
    )));
  }
}
