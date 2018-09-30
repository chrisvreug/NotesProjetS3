import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
          home: new MonButton()
      )
  );
}

class MonButton extends StatefulWidget {
  @override
  MonButtonState createState() => new MonButtonState();
}

class MonButtonState extends State<MonButton> {

  int counter = 0;
  List<String> strings = ["Ca", "Marche", "Les", "Boys"];
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 3 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Notes"), backgroundColor: Colors.deepOrange),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                      new Padding(padding: new EdgeInsets.all(10.0)),
                      new RaisedButton(
                          child: new Text("Press me!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                          color: Colors.red,
                          onPressed: onPressed
                      )
                    ]
                )
            )
        )
    );
  }
}