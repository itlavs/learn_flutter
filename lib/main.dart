import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Images"),
        ),
        body: Center(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/back.png"),
                ),
                Image.asset("assets/icons/icon.png")
              ],
          ),
        ),
      ),
    );
  }
}
