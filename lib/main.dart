import 'package:flutter/material.dart';
import 'package:listview/listview.dart';
import 'package:listview/menu.dart';

void main() {
  runApp(new MaterialApp(
    home: new Halsatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new Halsatu(),
      '/Haldua': (BuildContext context) => new Haldua(),
      '/Haltiga': (BuildContext context) => new Haltiga(),
    },
  ));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.android, size: 50.0, color: Colors.green),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}
