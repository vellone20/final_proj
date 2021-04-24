import 'package:flutter/material.dart';
import 'dart:math';

class ScoreboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Scoreboards'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Column(children: <Widget>[
            Expanded(
                child: ListView(children: [
              Center(
                child: Text("Which game score are you curious about?",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Card(
                margin: EdgeInsets.all(20),
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xffee0000), Color(0xffeeee00)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12,
                          offset: Offset(3, 12)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage("images/addition.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(19),
                              child: RaisedButton(
                                  color: Colors.white24,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AddScore()));
                                  },
                                  child: Text("Addition Scoreboard")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xffee0000), Color(0xffeeee00)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12,
                          offset: Offset(3, 12)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage("images/addition.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(19),
                              child: RaisedButton(
                                  color: Colors.white24,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubtractScore()));
                                  },
                                  child: Text("Subtraction Scoreboard")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xffee0000), Color(0xffeeee00)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12,
                          offset: Offset(3, 12)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage("images/addition.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(19),
                              child: RaisedButton(
                                  color: Colors.white24,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MultiScore()));
                                  },
                                  child: Text("Multiplication Scoreboard")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xffee0000), Color(0xffeeee00)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 12,
                          offset: Offset(3, 12)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                          image: AssetImage("images/addition.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(19),
                              child: RaisedButton(
                                  color: Colors.white24,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DivideScore()));
                                  },
                                  child: Text("Division Scoreboard")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])),
          ]),
        ));
  }
}

class AddScore extends StatelessWidget {
  // show for all difficulties
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Addition Scores'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: RaisedButton(
          color: Colors.yellow,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}

class SubtractScore extends StatelessWidget {
  // show for all difficulties
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Subtraction Scores'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: RaisedButton(
          color: Colors.yellow,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}

class MultiScore extends StatelessWidget {
  // show for all difficulties
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Mutliplication Scores'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
          child: Column(
              children: [
                Text(""), //SubtractMediumScoreList
              ]
          )
      ),
    );
  }
}

class DivideScore extends StatelessWidget {
  // show for all difficulties
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Division Scores'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: RaisedButton(
          color: Colors.yellow,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
