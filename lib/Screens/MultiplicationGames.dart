import 'package:flutter/material.dart';
import 'dart:math';

class MultiplicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Multiplication Page'),
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
                          image: AssetImage("images/multi.png"),
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
                                  color: Colors.greenAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MultiEasy()));
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
                          image: AssetImage("images/multi.png"),
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
                                  color: Colors.greenAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MultiMedium()));
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
                          image: AssetImage("images/multi.png"),
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
                                  color: Colors.greenAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MultiHard()));
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

class MultiEasy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MultiEasyWidget()),
    );
  }
}

class MultiEasyWidget extends StatefulWidget {
  @override
  _MultiEasyState createState() => _MultiEasyState();
}

class _MultiEasyState extends State<MultiEasyWidget> {
  //static const MultiEasyScoreList = [];
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
  int value4 = 0;
  int value5 = 0;
  int value6 = 0;
  int points = 0;
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  var firstPressB1 = true;

  var firstPressB2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('EASY MULTIPLICATION'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                if (firstPressB1) {
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(6);
                    value2 = random.nextInt(6);
                    value3 = random.nextInt(6);
                    value4 = random.nextInt(6);
                    value5 = random.nextInt(6);
                    value6 = random.nextInt(6);
                    ans1 = (value1 * value4).toString();
                    ans2 = (value2 * value5).toString();
                    ans3 = (value3 * value6).toString();
                  });
                }
              },
              child: Text("Generate Numbers")),
          Text("1. $value1 X $value4 = $userInput1",
              style: TextStyle(fontSize: 30)),
          Text("2. $value2 X $value5 = $userInput2",
              style: TextStyle(fontSize: 30)),
          Text("3. $value3 X $value6 = $userInput3",
              style: TextStyle(fontSize: 30)),
          Text(""),
          TextFormField(
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
                  firstPressB2 = false;
                  setState(() {
                    if (userInput1 == ans1) {
                      points++;
                      if (userInput2 == ans2) {
                        points++;
                        if (userInput3 == ans3) {
                          points++;
                        }
                      } else if (userInput3 == ans3) {
                        points++;
                      }
                    } else if (userInput2 == ans2) {
                      points++;
                      if (userInput3 == ans3) {
                        points++;
                      }
                    } else if (userInput3 == ans3) {
                      points++;
                    }
                  });
                }
              },
              child: Text("Check Answers")),
          Text("Correct Answers = $points", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}

class MultiMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MultiMediumWidget()),
    );
  }
}

class MultiMediumWidget extends StatefulWidget {
  @override
  _MultiMediumState createState() => _MultiMediumState();
}

class _MultiMediumState extends State<MultiMediumWidget> {
  //static const MultiMediumScoreList = [];
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
  int value4 = 0;
  int value5 = 0;
  int value6 = 0;
  int points = 0;
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  var firstPressB1 = true;

  var firstPressB2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('MEDIUM MULTIPLICATION'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                if (firstPressB1) {
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(6 + 6) - 6;
                    value2 = random.nextInt(6 + 6) - 6;
                    value3 = random.nextInt(6 + 6) - 6;
                    value4 = random.nextInt(6 + 6) - 6;
                    value5 = random.nextInt(6 + 6) - 6;
                    value6 = random.nextInt(6 + 6) - 6;
                    ans1 = (value1 * value4).toString();
                    ans2 = (value2 * value5).toString();
                    ans3 = (value3 * value6).toString();
                  });
                }
              },
              child: Text("Generate Numbers")),
          Text("1. $value1 X $value4 = $userInput1",
              style: TextStyle(fontSize: 30)),
          Text("2. $value2 X $value5 = $userInput2",
              style: TextStyle(fontSize: 30)),
          Text("3. $value3 X $value6 = $userInput3",
              style: TextStyle(fontSize: 30)),
          Text(""),
          TextFormField(
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
                  firstPressB2 = false;
                  setState(() {
                    if (userInput1 == ans1) {
                      points++;
                      if (userInput2 == ans2) {
                        points++;
                        if (userInput3 == ans3) {
                          points++;
                        }
                      } else if (userInput3 == ans3) {
                        points++;
                      }
                    } else if (userInput2 == ans2) {
                      points++;
                      if (userInput3 == ans3) {
                        points++;
                      }
                    } else if (userInput3 == ans3) {
                      points++;
                    }
                  });
                }
              },
              child: Text("Check Answers")),
          Text("Correct Answers = $points", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}

class MultiHard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MultiHardWidget()),
    );
  }
}

class MultiHardWidget extends StatefulWidget {
  @override
  _MultiHardState createState() => _MultiHardState();
}

class _MultiHardState extends State<MultiHardWidget> {
  static const MultiHardScoreList = [];
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
  int value4 = 0;
  int value5 = 0;
  int value6 = 0;
  int points = 0;
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  var firstPressB1 = true;

  var firstPressB2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('HARD MULTIPLICATION'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                if (firstPressB1) {
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(100 + 100) - 100;
                    value2 = random.nextInt(100 + 100) - 100;
                    value3 = random.nextInt(100 + 100) - 100;
                    value4 = random.nextInt(100 + 100) - 100;
                    value5 = random.nextInt(100 + 100) - 100;
                    value6 = random.nextInt(100 + 100) - 100;
                    ans1 = (value1 * value4).toString();
                    ans2 = (value2 * value5).toString();
                    ans3 = (value3 * value6).toString();
                  });
                }
              },
              child: Text("Generate Numbers")),
          Text("1. $value1 X $value4 = $userInput1",
              style: TextStyle(fontSize: 30)),
          Text("2. $value2 X $value5 = $userInput2",
              style: TextStyle(fontSize: 30)),
          Text("3. $value3 X $value6 = $userInput3",
              style: TextStyle(fontSize: 30)),
          Text(""),
          TextFormField(
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
                  firstPressB2 = false;
                  setState(() {
                    if (userInput1 == ans1) {
                      points++;
                      if (userInput2 == ans2) {
                        points++;
                        if (userInput3 == ans3) {
                          points++;
                        }
                      } else if (userInput3 == ans3) {
                        points++;
                      }
                    } else if (userInput2 == ans2) {
                      points++;
                      if (userInput3 == ans3) {
                        points++;
                      }
                    } else if (userInput3 == ans3) {
                      points++;
                    }
                  });
                }
              },
              child: Text("Check Answers")),
          Text("Correct Answers = $points", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}
