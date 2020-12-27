import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/widget.dart';

class MyState extends State<MyWidget> {
  bool _loading;
  double _progress;

  @override
  void initState() {
    _loading = false;
    _progress = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Statefull Widget"),
          centerTitle: true,
        ),
        body: Center(
          child: _loading
              ? Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Colors.orange,
                      ),
                      Text(
                        '${(_progress * 100).round()}%',
                        style: TextStyle(color: Colors.orange, fontSize: 20),
                      ),
                    ],
                  ),
                )
              : Text(
                  "Press button to downloads",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.file_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    const second = const Duration(milliseconds: 500);
    Timer.periodic(second, (Timer t) {
      setState(() {
        _progress += 0.1;
        if (_progress >= 1.0) {
          _loading = false;
          t.cancel();
          _progress = 0.0;
          return;
        }
      });
    });
  }
}


