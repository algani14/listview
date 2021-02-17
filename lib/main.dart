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
  final List<Color> colors2 = [
    Colors.amber,
    Colors.deepOrange,
    Colors.black,
    Colors.pink,
    Colors.purple
  ];

  final List<String> name = ['Albert', 'Wan', 'Xin', 'Lemon', 'Asep'];
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
                    padding: EdgeInsets.only(top: 10),
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 150,
                          height: 50,
                          child: Card(
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                '${name[index]}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors[index],
                            child: Center(
                              child: Text(
                                '${name[index]}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors2[index],
                            child: Center(
                              child: Text(
                                '${name[index]}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors2[index],
                            child: Center(
                              child: Text(
                                '${name[index]}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
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
