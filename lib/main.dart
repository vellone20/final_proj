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
class AddEasy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:AddEasyWidget()),
    );
  }
}

class AddEasyWidget extends StatefulWidget {
  @override
  _AddEasyWidgetState createState() => _AddEasyWidgetState();
}

class _AddEasyWidgetState extends State <AddEasyWidget> {
  final Controller1 = TextEditingController();
  String userInput1 = '';
  final Controller2 = TextEditingController();
  String userInput2 = '';
  final Controller3 = TextEditingController();
  String userInput3 = '';
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text('EASY ADDITION'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
          child: Column(
            children: [
              RaisedButton(onPressed: () {
                if(firstPressB1) {
                  firstPressB1 = false;
                  setState(() {
                    value1 = random.nextInt(6);
                    value2 = random.nextInt(6);
                    value3 = random.nextInt(6);
                    value4 = random.nextInt(6);
                    value5 = random.nextInt(6);
                    value6 = random.nextInt(6);
                    ans1 = (value1 + value4).toString();
                    ans2 = (value2 + value5).toString();
                    ans3 = (value3 + value6).toString();
                  });
                }
              }, child: Text("Generate Numbers")),
              Text("1. $value1 + $value4 = ?", style: TextStyle(fontSize: 30)),
              Text("2. $value2 + $value5 = ?", style: TextStyle(fontSize: 30)),
              Text("3. $value3 + $value6 = ?", style: TextStyle(fontSize: 30)),
              Text(""),
              TextFormField(
                controller: Controller1,
                onChanged: (value){
                  setState(() {
                    userInput1 = value;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Question 1 Answer')
              ),
              TextFormField(
                  controller: Controller2,
                  onChanged: (value){
                    setState(() {
                      userInput2 = value;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Question 2 Answer')
              ),
              TextFormField(
                  controller: Controller3,
                  onChanged: (value){
                    setState(() {
                      userInput3 = value;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Question 3 Answer')
              ),

              RaisedButton(onPressed: () {
                if(firstPressB2) {
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
                    }
                    else if (userInput2 == ans2) {
                      points++;
                      if (userInput3 == ans3) {
                        points++;
                      }
                    }
                    else if (userInput3 == ans3) {
                      points++;
                    }
                  });
                }
              }, child: Text("Check Answers")),
              Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
            ],
          )
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