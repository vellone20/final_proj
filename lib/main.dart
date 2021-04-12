import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MainPage(),
  ));
}

//////////////////////////////////Main Page/////////////////////////////////////

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Center(
            child: Text ('Math Games For Kids')
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () { Navigator.push (context,
                    MaterialPageRoute(builder: (context) => AdditionPage())
                );
                },
                  child: Text("Addition Game")
              )
            ),
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.red,
                  onPressed: () {Navigator.push (context,
                    MaterialPageRoute(builder: (context) => SubtractionPage())
                );
                },
                  child: Text("Subtraction Game")
              ),
            ),
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: () {Navigator.push (context,
                    MaterialPageRoute(builder: (context) => MultiplicationPage())
                );
              },
                  child: Text("Multiplication Game")
              ),
            ),
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.orange,
                  onPressed: () {Navigator.push (context,
                    MaterialPageRoute(builder: (context) => DivisionPage())
                );
              },
                  child: Text("Division Game")
              ),
            ),
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {Navigator.push (context,
                    MaterialPageRoute(builder: (context) => ScoreboardPage())
                );
              },
                  child: Text("Scoreboard")
              ),
            )
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////Add Page/////////////////////////////////////

class AdditionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Addition Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Please Choose a Difficulty",
                  style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {Navigator.push (context,
                      MaterialPageRoute(builder: (context) => AddEasy())
                  );
                  },
                  child: Text("Easy")
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {Navigator.push (context,
                      MaterialPageRoute(builder: (context) => AddMedium())
                  );
                  },
                  child: Text("Medium")
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {Navigator.push (context,
                      MaterialPageRoute(builder: (context) => AddHard())
                  );
                  },
                  child: Text("Hard")
              ),
            )
          ]
        ),
      ),
    );
  }
}

////////////////////////////////Subtract Page///////////////////////////////////

class SubtractionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Subtraction Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Column(
            children: <Widget>[
              Center(
                child: Text("Please Choose a Difficulty",
                    style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => SubtractEasy())
                    );
                    },
                    child: Text("Easy")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => SubtractMedium())
                    );
                    },
                    child: Text("Medium")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => SubtractHard())
                    );
                    },
                    child: Text("Hard")
                ),
              )
            ]
        ),
      ),
    );
  }
}

//////////////////////////////////Multi Page////////////////////////////////////

class MultiplicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title:Text ('Multiplication Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Column(
            children: <Widget>[
              Center(
                child: Text("Please Choose a Difficulty",
                    style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => MultiEasy())
                    );
                    },
                    child: Text("Easy")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => MultiMedium())
                    );
                    },
                    child: Text("Medium")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => MultiHard())
                    );
                    },
                    child: Text("Hard")
                ),
              )
            ]
        ),
      ),
    );
  }
}

////////////////////////////////Division Page///////////////////////////////////

class DivisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Division Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Column(
            children: <Widget>[
              Center(
                child: Text("Please Choose a Difficulty",
                    style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => DivideEasy())
                    );
                    },
                    child: Text("Easy")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => DivideMedium())
                    );
                    },
                    child: Text("Medium")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => DivideHard())
                    );
                    },
                    child: Text("Hard")
                ),
              )
            ]
        ),
      ),
    );
  }
}

//////////////////////////////Scoreboard Page///////////////////////////////////

class ScoreboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Scoreboard'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        child: Column(
            children: <Widget>[
              Center(
                child: Text("Different Scoreboards",
                  style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => AddScore())
                    );
                    },
                    child: Text("Addition Scoreboard")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => SubtractScore())
                    );
                    },
                    child: Text("Subtreaction Scoreboard")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => MultiScore())
                    );
                    },
                    child: Text("Division Scoreboard")
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    onPressed: () {Navigator.push (context,
                        MaterialPageRoute(builder: (context) => DivideScore())
                    );
                    },
                    child: Text("Mutliplication Scoreboard")
                ),
              ),

            ]
        ),
      ),
    );
  }
}

////////////////////////////Addition Difficulties///////////////////////////////

class AddEasy extends StatelessWidget {
  static const AddEasyScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('EASY ADDITION'),
        backgroundColor: Colors.purpleAccent,
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

class AddMedium extends StatelessWidget {
  static const AddMediumScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('MEDIUM ADDITION'),
        backgroundColor: Colors.purpleAccent,
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

class AddHard extends StatelessWidget {
  static const AddHardScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  //value1 = random.nextInt(9);
  //int userAns1 = value1 + userInput;
  //int correctAns1 = value1 + userInput;
  //if (userAns1 == correctAns1) {points++} else points+= 0
  //append points to list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('HARD ADDITION'),
        backgroundColor: Colors.purpleAccent,
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

////////////////////////////Subtraction Difficulties////////////////////////////

class SubtractEasy extends StatelessWidget {
  static const SubtractEasyScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('EASY SUBTRACTION'),
        backgroundColor: Colors.purpleAccent,
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

class SubtractMedium extends StatelessWidget {
  static const SubtractMediumScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('MEDIUM SUBTRACTION'),
        backgroundColor: Colors.purpleAccent,
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

class SubtractHard extends StatelessWidget {
  static const SubtractHardScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  //value1 = random.nextInt(9);
  //int ans1 = value1 + userInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('HARD SUBTRACTION'),
        backgroundColor: Colors.purpleAccent,
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

/////////////////////////Multiplication Difficulties////////////////////////////

class MultiEasy extends StatelessWidget {
  static const MultiEasyScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('EASY MULTIPLICATION'),
        backgroundColor: Colors.purpleAccent,
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

class MultiMedium extends StatelessWidget {
  static const MultiMediumScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('MEDIUM MULTIPLICATION'),
        backgroundColor: Colors.purpleAccent,
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

class MultiHard extends StatelessWidget {
  static const MultiHardScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  //value1 = random.nextInt(9);
  //int ans1 = value1 + userInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('HARD MULTIPLICATION'),
        backgroundColor: Colors.purpleAccent,
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

////////////////////////////Division Difficulties///////////////////////////////

class DivideEasy extends StatelessWidget {
  static const DivisionEasyScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('EASY DIVISION'),
        backgroundColor: Colors.purpleAccent,
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

class DivideMedium extends StatelessWidget {
  static const DivisionMediumScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('MEDIUM DIVISION'),
        backgroundColor: Colors.purpleAccent,
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

class DivideHard extends StatelessWidget {
  static const DivisionHardScoreList = [];
  Random random = new Random();
  int value1 = 0;
  int value2 = 0;
  int value3 = 0;
  int userInput1;
  int userInput2;
  int userInput3;
  //value1 = random.nextInt(9);
  //int ans1 = value1 + userInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('HARD DIVISION'),
        backgroundColor: Colors.purpleAccent,
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

////////////////////////////Different Scoreboards///////////////////////////////

class AddScore extends StatelessWidget {
  // show for all difficulties
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Addition Scores'),
        backgroundColor: Colors.purpleAccent,
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
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Subtraction Scores'),
        backgroundColor: Colors.purpleAccent,
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
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Mutliplication Scores'),
        backgroundColor: Colors.purpleAccent,
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

class DivideScore extends StatelessWidget {
  // show for all difficulties
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('Division Scores'),
        backgroundColor: Colors.purpleAccent,
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