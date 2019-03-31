import 'package:flutter/material.dart';
import 'package:intercitytours_flutter/Bar.dart';
import 'package:intercitytours_flutter/Body.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            "http://www.technocrazed.com/wp-content/uploads/2015/12/Paris-Wallpaper-background-21.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
            appBar: new Bar().build('hola caro'),
            backgroundColor: Colors.transparent,
            body: new Container(
              child: Body() /* add child content here */,
            ))
      ],
    ));
  }
}
