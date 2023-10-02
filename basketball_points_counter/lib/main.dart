import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  PointsCounter({super.key});

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
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 180,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          //print(this.teamAPoints);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                          //print(this.teamAPoints);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(130, 50),
                        ),
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                          //print(this.teamAPoints);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(130, 50),
                        ),
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 30,
                    endIndent: 20,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 180,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                          //print(this.teamBPoints);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                          //print(teamBPoints);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(130, 50),
                        ),
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                          //print(teamBPoints);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(130, 50),
                        ),
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: Size(150, 30),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoints = teamBPoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
