import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Marmelad"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ресурсы: Картинки и шрифты"),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/back.png"),
              ),
              Image.asset("assets/icons/icon.png"),
              Positioned(
                top: 6,
                left: 16,
                child: Text(
                  "Надпись",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PoiretOne"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
