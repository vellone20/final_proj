import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Center(
            child: Text ('Main Page')
        ),
        backgroundColor: Colors.purpleAccent,
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
              // padding: EdgeInsets.all (100),
              // margin: EdgeInsets.all(50),
              child: ElevatedButton(onPressed: () {
                Navigator.push (context,
                    MaterialPageRoute(builder: (context) => SecondPage())
                );
                },
                  child: Text("Memory Game")
              )
              ),
            ),
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(50),
              child: ElevatedButton(onPressed: () {
                Navigator.push (context,
                    MaterialPageRoute(builder: (context) => ThirdPage())
                );
                },
                  child: Text("Math Game")
              ),
            ),
            Container(
              // padding: EdgeInsets.all (100),
              margin: EdgeInsets.all(50),
              child: ElevatedButton(onPressed: () {
                Navigator.push (context,
                    MaterialPageRoute(builder: (context) => FourthPage())
                );
              },
                  child: Text("Continent Game")
              ),
            )
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Center(
            child: Text ('Memory Page')
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Center(
            child: Text ('Math Page')
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Center(
            child: Text ('Continent Page')
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}