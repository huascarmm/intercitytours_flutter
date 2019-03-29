import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: new Scaffold(
        appBar: null,
        body: new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(image: new NetworkImage("http://www.technocrazed.com/wp-content/uploads/2015/12/Paris-Wallpaper-background-21.jpg"),
                  fit: BoxFit.cover)
          ),
          child: null /* add child content here */,
        )
      )
    )
);