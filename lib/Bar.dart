import 'package:flutter/material.dart';

class Bar{
  build(String title) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.transparent,
    );
  }
}

/*
            title: Center(
                child: Text(
                    "Intercity Tours",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 24.0
                    ),
                ),
            ),
}*/
