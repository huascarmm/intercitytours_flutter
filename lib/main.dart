import 'package:flutter/material.dart';
import 'package:intercitytours_flutter/Bar.dart';
import 'package:intercitytours_flutter/Body.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData.dark(),
        home: new Stack(
          children: <Widget>[
            SizedBox.expand(
              child: Image.network(
                "http://www.technocrazed.com/wp-content/uploads/2015/12/Paris-Wallpaper-background-21.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Scaffold(
                appBar: null, // new Bar().build('hola caro'),
                backgroundColor: new Color.fromRGBO(0, 0, 0, 0.5),
                body: Body())
          ],
        ));
  }
}
