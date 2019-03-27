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
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("Hey i am the app"),
              pinned: true,
              floating: true,
              centerTitle: true,
              elevation: 10.0,
              // forceElevated: true,
              expandedHeight: 100.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "<link to the image>",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ListTile(
                    title: Text("I am list tile no $index"),
                    leading: Icon(Icons.face),
                  );
                },
                childCount: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
