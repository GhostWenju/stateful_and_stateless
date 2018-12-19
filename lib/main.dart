import 'package:flutter/material.dart';
import 'package:stateful_and_stateless/stateful_weight.dart';
import 'package:stateful_and_stateless/stateless_weight.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHome()
    ),
  );
}
class MyHome extends StatefulWidget{
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StatelessAndStateful"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stateless()));
                },
                child: new Text("stateless"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stateful()));
                },
                child: new Text("stateful"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
