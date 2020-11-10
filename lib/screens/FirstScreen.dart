import 'package:flutter/material.dart';
import 'SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Weather Application"),
        ),
        body: RaisedButton(
            child: Text('City select'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Places Autocomplete Demo')),
              );
            }));
  }
}