// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Points Counter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 550,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$teamAPoints",
                        style: TextStyle(
                          fontSize: 270,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          child: Text(
                            "Add 2 point",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          child: Text(
                            "Add 3 point",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 550,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 550,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$teamBPoints",
                        style: TextStyle(
                          fontSize: 270,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          child: Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          child: Text(
                            "Add 2 point",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          child: Text(
                            "Add 3 point",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
