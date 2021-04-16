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
      appBar: AppBar(title: Center(
          child: Text ('Math Games For Kids')), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.blue,
              onPressed: () { Navigator.push (context,
                  MaterialPageRoute(builder: (context) => AdditionPage()));},
              child: Text("Addition Game"))),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.red,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => SubtractionPage()));},
              child: Text("Subtraction Game")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => MultiplicationPage()));},
              child: Text("Multiplication Game")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.orange,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => DivisionPage()));},
              child: Text("Division Game")),),
        Container(
          // padding: EdgeInsets.all (100),
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => ScoreboardPage()));},
              child: Text("Scoreboard")),)
      ],),),
    );
  }
}

///////////////////////////////////Add Page/////////////////////////////////////
class AdditionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('Addition Page'), backgroundColor: Colors.purpleAccent,),
      body: Container(child: Column(children: <Widget>[
        Center(
          child: Text("Please Choose a Difficulty",
              style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => AddEasy()));},
              child: Text("Easy")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => AddMedium()));},
              child: Text("Medium")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => AddHard()));},
              child: Text("Hard")),)
      ]),),
    );
  }
}

////////////////////////////////Subtract Page///////////////////////////////////
class SubtractionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('Subtraction Page'), backgroundColor: Colors.purpleAccent,),
      body: Container(child: Column(children: <Widget>[
        Center(
          child: Text("Please Choose a Difficulty",
              style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => SubtractEasy()));},
              child: Text("Easy")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => SubtractMedium()));},
              child: Text("Medium")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => SubtractHard()));},
              child: Text("Hard")),)
      ]),),
    );
  }
}

//////////////////////////////////Multi Page////////////////////////////////////
class MultiplicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title:Text ('Multiplication Page'), backgroundColor: Colors.purpleAccent,),
      body: Container(child: Column(children: <Widget>[
        Center(
          child: Text("Please Choose a Difficulty",
              style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => MultiEasy()));},
              child: Text("Easy")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => MultiMedium()));},
              child: Text("Medium")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => MultiHard()));},
              child: Text("Hard")),)
      ]),),
    );
  }
}

////////////////////////////////Division Page///////////////////////////////////
class DivisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('Division Page'), backgroundColor: Colors.purpleAccent,),
      body: Container(child: Column(children: <Widget>[
        Center(
          child: Text("Please Choose a Difficulty",
              style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => DivideEasy()));},
              child: Text("Easy")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => DivideMedium()));},
              child: Text("Medium")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => DivideHard()));},
              child: Text("Hard")),)
      ]),),
    );
  }
}

//////////////////////////////Scoreboard Page///////////////////////////////////
class ScoreboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('Scoreboard'), backgroundColor: Colors.purpleAccent,),
      body: Container(child: Column(children: <Widget>[
        Center(
          child: Text("Different Scoreboards",
              style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => AddScore()));},
              child: Text("Addition Scoreboard")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => SubtractScore()));},
              child: Text("Subtreaction Scoreboard")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => MultiScore()));},
              child: Text("Division Scoreboard")),),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () {Navigator.push (context,
                  MaterialPageRoute(builder: (context) => DivideScore()));},
              child: Text("Mutliplication Scoreboard")),),
      ]),),
    );
  }
}

////////////////////////////Addition Difficulties///////////////////////////////
class AddEasy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:AddEasyWidget()),);
  }
}

class AddEasyWidget extends StatefulWidget {
  @override
  _AddEasyWidgetState createState() => _AddEasyWidgetState();
}

class _AddEasyWidgetState extends State <AddEasyWidget> {
  //static const AddEasyScoreList = [];
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text('EASY ADDITION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
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
            });}
          }, child: Text("Generate Numbers")),
        Text("1. $value1 + $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 + $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 + $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){
              setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){
              setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){
              setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
                if (userInput2 == ans2) {points++;
                  if (userInput3 == ans3) {points++;}}
                else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
                if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
          }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30))
      ],)),
    );
  }
}

class AddMedium extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:AddMediumWidget()),);
  }
}

class AddMediumWidget extends StatefulWidget {
  @override
  _AddMediumWidgetState createState() => _AddMediumWidgetState();
}

class _AddMediumWidgetState  extends State <AddMediumWidget> {
  //static const AddMediumScoreList = [];
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('MEDIUM ADDITION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(6 + 6) - 6;
              value2 = random.nextInt(6 + 6) - 6;
              value3 = random.nextInt(6 + 6) - 6;
              value4 = random.nextInt(6 + 6) - 6;
              value5 = random.nextInt(6 + 6) - 6;
              value6 = random.nextInt(6 + 6) - 6;
              ans1 = (value1 + value4).toString();
              ans2 = (value2 + value5).toString();
              ans3 = (value3 + value6).toString();
            });}
          }, child: Text("Generate Numbers")),
        Text("1. $value1 + $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 + $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 + $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){
              setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
                if (userInput2 == ans2) {points++;
                  if (userInput3 == ans3) {points++;}}
                else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
                if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

class AddHard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:AddHardWidget()),);
  }
}

class AddHardWidget extends StatefulWidget {
  @override
  _AddHardWidgetState createState() => _AddHardWidgetState();
}

class  _AddHardWidgetState  extends State <AddHardWidget> {
  //static const AddHardScoreList = [];
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('HARD ADDITION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(100 + 100) - 100;
              value2 = random.nextInt(100 + 100) - 100;
              value3 = random.nextInt(100 + 100) - 100;
              value4 = random.nextInt(100 + 100) - 100;
              value5 = random.nextInt(100 + 100) - 100;
              value6 = random.nextInt(100 + 100) - 100;
              ans1 = (value1 + value4).toString();
              ans2 = (value2 + value5).toString();
              ans3 = (value3 + value6).toString();
            });}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 + $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 + $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 + $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
                if (userInput2 == ans2) {points++;
                  if (userInput3 == ans3) {points++;}}
                else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
                if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

////////////////////////////Subtraction Difficulties////////////////////////////
class SubtractEasy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:SubtractEasyWidget()),);
  }
}

class SubtractEasyWidget extends StatefulWidget {
  @override
  _SubtractEasyState createState() => _SubtractEasyState();
}

class _SubtractEasyState extends State <SubtractEasyWidget> {
  //static const SubtractEasyScoreList = [];
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('EASY SUBTRACTION'), backgroundColor: Colors.purpleAccent,
      ),
      body: Center(child: Column(children: [
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
              ans1 = (value1 - value4).toString();
              ans2 = (value2 - value5).toString();
              ans3 = (value3 - value6).toString();
            });}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 - $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 - $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 - $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
                if (userInput2 == ans2) {points++;
                  if (userInput3 == ans3) {points++;}}
                else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
                if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

class SubtractMedium extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:SubtractMediumWidget()),
    );
  }
}

class SubtractMediumWidget extends StatefulWidget {
  @override
  _SubtractMediumState createState() => _SubtractMediumState();
}

class _SubtractMediumState extends State <SubtractMediumWidget> {
  //static const SubtractMediumScoreList = [];
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('MEDIUM SUBTRACTION'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(6 + 6) - 6;
              value2 = random.nextInt(6 + 6) - 6;
              value3 = random.nextInt(6 + 6) - 6;
              value4 = random.nextInt(6 + 6) - 6;
              value5 = random.nextInt(6 + 6) - 6;
              value6 = random.nextInt(6 + 6) - 6;
              ans1 = (value1 - value4).toString();
              ans2 = (value2 - value5).toString();
              ans3 = (value3 - value6).toString();
            });}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 - $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 - $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 - $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
                if (userInput2 == ans2) {points++;
                  if (userInput3 == ans3) {points++;}}
                else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
                if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

class SubtractHard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:SubtractHardWidget()),);
  }
}

class SubtractHardWidget extends StatefulWidget {
  @override
  _SubtractHardState createState() => _SubtractHardState();
}

class _SubtractHardState extends State <SubtractHardWidget> {
  //static const SubtractHardScoreList = [];
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('HARD SUBTRACTION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(100 + 100) - 100;
              value2 = random.nextInt(100 + 100) - 100;
              value3 = random.nextInt(100 + 100) - 100;
              value4 = random.nextInt(100 + 100) - 100;
              value5 = random.nextInt(100 + 100) - 100;
              value6 = random.nextInt(100 + 100) - 100;
              ans1 = (value1 - value4).toString();
              ans2 = (value2 - value5).toString();
              ans3 = (value3 - value6).toString();
            });}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 - $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 - $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 - $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
                if (userInput2 == ans2) {points++;
                  if (userInput3 == ans3) {points++;}}
                else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
                if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

/////////////////////////Multiplication Difficulties////////////////////////////

class MultiEasy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:MultiEasyWidget()),);
  }
}

class MultiEasyWidget extends StatefulWidget {
  @override
  _MultiEasyState createState() => _MultiEasyState();
}

class _MultiEasyState extends State <MultiEasyWidget> {
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('EASY MULTIPLICATION'), backgroundColor: Colors.purpleAccent,
      ),
      body: Center(child: Column(children: [
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
              ans1 = (value1 * value4).toString();
              ans2 = (value2 * value5).toString();
              ans3 = (value3 * value6).toString();});}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 X $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 X $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 X $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
              if (userInput2 == ans2) {points++;
              if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
              if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

class MultiMedium extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:MultiMediumWidget()),);
  }
}

class MultiMediumWidget extends StatefulWidget {
  @override
  _MultiMediumState createState() => _MultiMediumState();
}

class _MultiMediumState extends State <MultiMediumWidget> {
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('MEDIUM MULTIPLICATION'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
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
              ans3 = (value3 * value6).toString();});}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 X $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 X $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 X $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
              if (userInput2 == ans2) {points++;
              if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
              if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

class MultiHard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:MultiHardWidget()),);
  }
}

class MultiHardWidget extends StatefulWidget {
  @override
  _MultiHardState createState() => _MultiHardState();
}

class _MultiHardState extends State <MultiHardWidget> {
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text ('HARD MULTIPLICATION'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
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
              ans3 = (value3 * value6).toString();});}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 X $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 X $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 X $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1 == ans1) {points++;
              if (userInput2 == ans2) {points++;
              if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}}
              else if (userInput2 == ans2) {points++;
              if (userInput3 == ans3) {points++;}}
              else if (userInput3 == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

////////////////////////////Division Difficulties///////////////////////////////

class DivideEasy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:DivideEasyWidget()),);
  }
}

class DivideEasyWidget extends StatefulWidget {
  @override
  _DivideEasyState createState() => _DivideEasyState();
}

class _DivideEasyState extends State <DivideEasyWidget> {
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('EASY DIVISION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(10)*2;
              value2 = random.nextInt(10)*2;
              value3 = random.nextInt(10)*2;
              ans1 = (value1 / value4).toString();
              ans2 = (value2 / value5).toString();
              ans3 = (value3 / value6).toString();});}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 ÷ $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 ÷ $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 ÷ $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1+'.0' == ans1) {points++;
              if (userInput2+'.0' == ans2) {points++;
              if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput2+'.0' == ans2) {points++;
              if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput3+'.0' == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}

class DivideMedium extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:DivideMediumWidget()),);
  }
}

class DivideMediumWidget extends StatefulWidget {
  @override
  _DivideMediumState createState() => _DivideMediumState();
}

class _DivideMediumState extends State <DivideMediumWidget> {
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('MEDIUM DIVISION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(6 + 6)*2 - 12;
              value2 = random.nextInt(6 + 6)*2 - 12;
              value3 = random.nextInt(6 + 6)*2 - 12;
              if (value1 < 0) ans1 = ((value1*-1 / value4)*-1).toString();
              else ans1 = (value1 / value4).toString();
              if (value2 < 0) ans2 = ((value2*-1 / value5)*-1).toString();
              else ans2 = (value2 / value5).toString();
              if (value3 < 0) ans3 = ((value3*-1 / value6)*-1).toString();
              else ans3 = (value3 / value6).toString();});}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 ÷ $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 ÷ $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 ÷ $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1+'.0' == ans1) {points++;
              if (userInput2+'.0' == ans2) {points++;
              if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput2+'.0' == ans2) {points++;
              if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput3+'.0' == ans3) {points++;}});}
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
    );
  }
}


class DivideHard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:DivideHardWidget()),);
  }
}

class DivideHardWidget extends StatefulWidget {
  @override
  _DivideHardState createState() => _DivideHardState();
}

class _DivideHardState extends State <DivideHardWidget> {
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
  var firstPressB1 = true ;
  var firstPressB2 = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: Text ('HARD DIVISION'), backgroundColor: Colors.purpleAccent,),
      body: Center(child: Column(children: [
        RaisedButton(onPressed: () {
          if(firstPressB1) {
            //firstPressB1 = false;
            setState(() {
              value1 = random.nextInt(20 + 20)*2 - 40;
              value2 = random.nextInt(20 + 20)*2 - 40;
              value3 = random.nextInt(20 + 20)*2 - 40;
              if (value1 < 0) ans1 = ((value1 / value4*-1)*-1).toString();
              else ans1 = (value1 / value4).toString();
              if (value2 < 0) ans2 = ((value2 / value5*-1)*-1).toString();
              else ans2 = (value2 / value5).toString();
              if (value3 < 0) ans3 = ((value3 / value6*-1)*-1).toString();
              else ans3 = (value3 / value6).toString();});}
        }, child: Text("Generate Numbers")),
        Text("1. $value1 ÷ $value4 = $userInput1", style: TextStyle(fontSize: 30)),
        Text("2. $value2 ÷ $value5 = $userInput2", style: TextStyle(fontSize: 30)),
        Text("3. $value3 ÷ $value6 = $userInput3", style: TextStyle(fontSize: 30)),
        Text(""),
        TextFormField(
            controller: Controller1,
            onChanged: (value){setState(() {userInput1 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 1 Answer')
        ),
        TextFormField(
            controller: Controller2,
            onChanged: (value){setState(() {userInput2 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 2 Answer')
        ),
        TextFormField(
            controller: Controller3,
            onChanged: (value){setState(() {userInput3 = value;});},
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Question 3 Answer')
        ),
        Text(""),
        RaisedButton(onPressed: () {
          if(firstPressB2) {
            firstPressB2 = false;
            setState(() {
              if (userInput1+'.0' == ans1) {points++;
              if (userInput2+'.0' == ans2) {points++;
              if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput2+'.0' == ans2) {points++;
              if (userInput3+'.0' == ans3) {points++;}}
              else if (userInput3+'.0' == ans3) {points++;}});}
          print (ans1);
          print (ans2);
          print (ans3);
          print (userInput1);
          print (userInput2);
          print (userInput3);
        }, child: Text("Check Answers")),
        Text("Correct Answers = $points", style:TextStyle(fontSize: 30)),
      ],)),
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
      appBar: AppBar(title: Text ('Addition Scores'), backgroundColor: Colors.purpleAccent,),
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