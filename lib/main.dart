import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Color> colors = [
    Colors.cyan,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 200,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.blueGrey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          width: 200,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          color: colors[index],
                        );
                      },
                      itemCount: colors.length,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          color: colors[index],
                        );
                      },
                      itemCount: colors.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
