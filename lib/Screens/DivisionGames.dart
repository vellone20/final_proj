import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class DivisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Division Page'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Column(children: <Widget>[
            Expanded(
                child: ListView(children: [
              Center(
                child: Text("Please Choose a Difficulty",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
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
                          image: AssetImage("images/division.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(40),
                              child: RaisedButton(
                                  color: Colors.blueAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DivideEasy()));
                                  },
                                  child: Text("Easy")),
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
                          image: AssetImage("images/division.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(40),
                              child: RaisedButton(
                                  color: Colors.blueAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DivideMedium()));
                                  },
                                  child: Text("Medium")),
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
                          image: AssetImage("images/division.png"),
                          height: 80,
                          width: 80),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(40),
                              child: RaisedButton(
                                  color: Colors.blueAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DivideHard()));
                                  },
                                  child: Text("Hard")),
                            )
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

class DivideEasy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: DivideEasyWidget()),
    );
  }
}

class DivideEasyWidget extends StatefulWidget {
  @override
  _DivideEasyState createState() => _DivideEasyState();
}

class _DivideEasyState extends State<DivideEasyWidget> {
  static const DivisionEasyScoreList = [];
  final Controller1 = TextEditingController();
  String userInput1 = '?';
  final Controller2 = TextEditingController();
  String userInput2 = '?';
  final Controller3 = TextEditingController();
  String userInput3 = '?';
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int value4 = 2;
  int value5 = 2;
  int value6 = 2;
  int points = 0;
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  var d1;
  var d2;
  var finTime;
  var firstPressB1 = true;

  var firstPressB2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('EASY DIVISION'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                if (firstPressB1) {
                  d1 = DateTime.now();
                  firstPressB2 = true;
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(10) * 2;
                    value2 = random.nextInt(10) * 2;
                    value3 = random.nextInt(10) * 2;
                    ans1 = (value1 / value4).toString();
                    ans2 = (value2 / value5).toString();
                    ans3 = (value3 / value6).toString();
                  });
                }
              },
              child: Text("Generate Numbers")),
          Text("1. $value1 ÷ $value4 = $userInput1",
              style: TextStyle(fontSize: 30)),
          Text("2. $value2 ÷ $value5 = $userInput2",
              style: TextStyle(fontSize: 30)),
          Text("3. $value3 ÷ $value6 = $userInput3",
              style: TextStyle(fontSize: 30)),
          Text(""),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller1,
              onChanged: (value) {
                setState(() {
                  userInput1 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 1 Answer')),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller2,
              onChanged: (value) {
                setState(() {
                  userInput2 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 2 Answer')),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller3,
              onChanged: (value) {
                setState(() {
                  userInput3 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 3 Answer')),
          Text(""),
          RaisedButton(
              onPressed: () {
                if (firstPressB2) {
                  d2 = DateTime.now();
                  finTime = d2.difference(d1);
                  firstPressB2 = false;
                  setState(() {
                    if (userInput1 + '.0' == ans1) {
                      points++;
                      if (userInput2 + '.0' == ans2) {
                        points++;
                        if (userInput3 + '.0' == ans3) {
                          points++;
                        }
                      } else if (userInput3 + '.0' == ans3) {
                        points++;
                      }
                    } else if (userInput2 + '.0' == ans2) {
                      points++;
                      if (userInput3 + '.0' == ans3) {
                        points++;
                      }
                    } else if (userInput3 + '.0' == ans3) {
                      points++;
                    }
                  });
                }
              },
              child: Text("Check Answers")),
          Text("Correct Answers = $points", style: TextStyle(fontSize: 30)),
          Text("Finish Time = $finTime", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}

class DivideMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: DivideMediumWidget()),
    );
  }
}

class DivideMediumWidget extends StatefulWidget {
  @override
  _DivideMediumState createState() => _DivideMediumState();
}

class _DivideMediumState extends State<DivideMediumWidget> {
  static const DivisionMediumScoreList = [];
  final Controller1 = TextEditingController();
  String userInput1 = '?';
  final Controller2 = TextEditingController();
  String userInput2 = '?';
  final Controller3 = TextEditingController();
  String userInput3 = '?';
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int value4 = 2;
  int value5 = 2;
  int value6 = 2;
  int points = 0;
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  var d1;
  var d2;
  var finTime;
  var firstPressB1 = true;

  var firstPressB2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('MEDIUM DIVISION'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                if (firstPressB1) {
                  d1 = DateTime.now();
                  firstPressB2 = true;
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(6 + 6) * 2 - 12;
                    value2 = random.nextInt(6 + 6) * 2 - 12;
                    value3 = random.nextInt(6 + 6) * 2 - 12;
                    if (value1 < 0)
                      ans1 = ((value1 * -1 / value4) * -1).toString();
                    else
                      ans1 = (value1 / value4).toString();
                    if (value2 < 0)
                      ans2 = ((value2 * -1 / value5) * -1).toString();
                    else
                      ans2 = (value2 / value5).toString();
                    if (value3 < 0)
                      ans3 = ((value3 * -1 / value6) * -1).toString();
                    else
                      ans3 = (value3 / value6).toString();
                  });
                }
              },
              child: Text("Generate Numbers")),
          Text("1. $value1 ÷ $value4 = $userInput1",
              style: TextStyle(fontSize: 30)),
          Text("2. $value2 ÷ $value5 = $userInput2",
              style: TextStyle(fontSize: 30)),
          Text("3. $value3 ÷ $value6 = $userInput3",
              style: TextStyle(fontSize: 30)),
          Text(""),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller1,
              onChanged: (value) {
                setState(() {
                  userInput1 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 1 Answer')),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller2,
              onChanged: (value) {
                setState(() {
                  userInput2 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 2 Answer')),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller3,
              onChanged: (value) {
                setState(() {
                  userInput3 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 3 Answer')),
          Text(""),
          RaisedButton(
              onPressed: () {
                if (firstPressB2) {
                  d2 = DateTime.now();
                  finTime = d2.difference(d1);
                  firstPressB2 = false;
                  setState(() {
                    if (userInput1 + '.0' == ans1) {
                      points++;
                      if (userInput2 + '.0' == ans2) {
                        points++;
                        if (userInput3 + '.0' == ans3) {
                          points++;
                        }
                      } else if (userInput3 + '.0' == ans3) {
                        points++;
                      }
                    } else if (userInput2 + '.0' == ans2) {
                      points++;
                      if (userInput3 + '.0' == ans3) {
                        points++;
                      }
                    } else if (userInput3 + '.0' == ans3) {
                      points++;
                    }
                  });
                }
              },
              child: Text("Check Answers")),
          Text("Correct Answers = $points", style: TextStyle(fontSize: 30)),
          Text("Finish Time = $finTime", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}

class DivideHard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: DivideHardWidget()),
    );
  }
}

class DivideHardWidget extends StatefulWidget {
  @override
  _DivideHardState createState() => _DivideHardState();
}

class _DivideHardState extends State<DivideHardWidget> {
  static const DivisionHardScoreList = [];
  final Controller1 = TextEditingController();
  String userInput1 = '?';
  final Controller2 = TextEditingController();
  String userInput2 = '?';
  final Controller3 = TextEditingController();
  String userInput3 = '?';
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int value4 = -2;
  int value5 = -2;
  int value6 = -2;
  int points = 0;
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  var d1;
  var d2;
  var finTime;
  var firstPressB1 = true;

  var firstPressB2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('HARD DIVISION'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                if (firstPressB1) {
                  d1 = DateTime.now();
                  firstPressB2 = true;
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(20 + 20) * 2 - 40;
                    value2 = random.nextInt(20 + 20) * 2 - 40;
                    value3 = random.nextInt(20 + 20) * 2 - 40;
                    if (value1 < 0)
                      ans1 = ((value1 / value4 * -1) * -1).toString();
                    else
                      ans1 = (value1 / value4).toString();
                    if (value2 < 0)
                      ans2 = ((value2 / value5 * -1) * -1).toString();
                    else
                      ans2 = (value2 / value5).toString();
                    if (value3 < 0)
                      ans3 = ((value3 / value6 * -1) * -1).toString();
                    else
                      ans3 = (value3 / value6).toString();
                  });
                }
              },
              child: Text("Generate Numbers")),
          Text("1. $value1 ÷ $value4 = $userInput1",
              style: TextStyle(fontSize: 30)),
          Text("2. $value2 ÷ $value5 = $userInput2",
              style: TextStyle(fontSize: 30)),
          Text("3. $value3 ÷ $value6 = $userInput3",
              style: TextStyle(fontSize: 30)),
          Text(""),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller1,
              onChanged: (value) {
                setState(() {
                  userInput1 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 1 Answer')),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller2,
              onChanged: (value) {
                setState(() {
                  userInput2 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 2 Answer')),
          TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly ],
              controller: Controller3,
              onChanged: (value) {
                setState(() {
                  userInput3 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Question 3 Answer')),
          Text(""),
          RaisedButton(
              onPressed: () {
                if (firstPressB2) {
                  d2 = DateTime.now();
                  finTime = d2.difference(d1);
                  firstPressB2 = false;
                  setState(() {
                    if (userInput1 + '.0' == ans1) {
                      points++;
                      if (userInput2 + '.0' == ans2) {
                        points++;
                        if (userInput3 + '.0' == ans3) {
                          points++;
                        }
                      } else if (userInput3 + '.0' == ans3) {
                        points++;
                      }
                    } else if (userInput2 + '.0' == ans2) {
                      points++;
                      if (userInput3 + '.0' == ans3) {
                        points++;
                      }
                    } else if (userInput3 + '.0' == ans3) {
                      points++;
                    }
                  });
                }
                print(ans1);
                print(ans2);
                print(ans3);
                print(userInput1);
                print(userInput2);
                print(userInput3);
              },
              child: Text("Check Answers")),
          Text("Correct Answers = $points", style: TextStyle(fontSize: 30)),
          Text("Finish Time = $finTime", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}
