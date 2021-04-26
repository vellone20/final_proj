import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/AdditionGames.dart';
import 'Screens/ChatPage.dart';
import 'Screens/DivisionGames.dart';
import 'Screens/MultiplicationGames.dart';
import 'Screens/ScoreboardPage.dart';
import 'Screens/SubtractionGames.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MainPage(),
    // home: FutureBuilder(
    //     future: _fbApp,
    //     builder: (context, snapshot) {
    //       if (snapshot.hasError)
    //       {print ("Error"); return Text ("Error");}
    //       else if (snapshot.hasData)
    //       {return MainPage();}
    //       else {return Center(child: CircularProgressIndicator());}
    //     }
    // ),
  ));
}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Center(
          child: Text ('Math For Kids')), backgroundColor: Colors.deepOrange,),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                  children: [
                    Card(
                      margin: EdgeInsets.all(20),
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffee0000), Color(0xffeeee00)]),
                          boxShadow: [BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 12,
                              offset: Offset(3, 12)),],),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: AssetImage("images/addition.png"), height: 80, width: 80),
                            SizedBox(width: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(30),
                                      child: RaisedButton(
                                          color: Colors.yellow,
                                          onPressed: () { Navigator.push (context,
                                              MaterialPageRoute(builder: (context) => AdditionPage()));},
                                          child: Text("Addition Games"))),
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
                        borderRadius: BorderRadius.circular(20),),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffee0000), Color(0xffeeee00)]),
                          boxShadow: [BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 12,
                              offset: Offset(3, 12)),],),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: AssetImage("images/minus.png"), height: 80, width: 80),
                            SizedBox(width: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(30),
                                    child: RaisedButton(
                                        color: Colors.red,
                                        onPressed: () {Navigator.push (context,
                                            MaterialPageRoute(builder: (context) => SubtractionPage()));},
                                        child: Text("Subtraction Games")),),
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
                        borderRadius: BorderRadius.circular(20),),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffee0000), Color(0xffeeee00)]),
                          boxShadow: [BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 12,
                              offset: Offset(3, 12)),],),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: AssetImage("images/multi.png"), height: 80, width: 80),
                            SizedBox(width: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(30),
                                    child: RaisedButton(
                                        color: Colors.greenAccent,
                                        onPressed: () {Navigator.push (context,
                                            MaterialPageRoute(builder: (context) => MultiplicationPage()));},
                                        child: Text("Multiplication Games")),),
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
                        borderRadius: BorderRadius.circular(20),),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffee0000), Color(0xffeeee00)]),
                          boxShadow: [BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 12,
                              offset: Offset(3, 12)),],),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: AssetImage("images/division.png"), height: 80, width: 80),
                            SizedBox(width: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(30),
                                    child: RaisedButton(
                                        color: Colors.blueAccent,
                                        onPressed: () {Navigator.push (context,
                                            MaterialPageRoute(builder: (context) => DivisionPage()));},
                                        child: Text("Division Games")),),
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
                        borderRadius: BorderRadius.circular(20),),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffee0000), Color(0xffeeee00)]),
                          boxShadow: [BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 12,
                              offset: Offset(3, 12)),],),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: AssetImage("images/chat.png"), height: 80, width: 80),
                            SizedBox(width: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(30),
                                    child: RaisedButton(
                                        color: Colors.deepPurpleAccent,
                                        onPressed: () {Navigator.push (context,
                                            MaterialPageRoute(builder: (context) => ChatPage()));},
                                        child: Text("Chat")),),
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
                        borderRadius: BorderRadius.circular(20),),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffee0000), Color(0xffeeee00)]),
                          boxShadow: [BoxShadow(
                              color: Colors.redAccent,
                              blurRadius: 12,
                              offset: Offset(3, 12)),],),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: AssetImage("images/scoreboard.png"), height: 80, width: 80),
                            SizedBox(width: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    // padding: EdgeInsets.all (100),
                                    margin: EdgeInsets.all(30),
                                    child: RaisedButton(
                                        color: Colors.white24,
                                        onPressed: () {Navigator.push (context,
                                            MaterialPageRoute(builder: (context) => ScoreboardPage()));},
                                        child: Text("Scoreboard")),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}