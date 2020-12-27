import 'package:flutter/material.dart';

void main() => runApp(MyStatelessWidget());

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Stateless Widget"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LinearProgressIndicator(
                  value: 25,
                  backgroundColor: Colors.orange,
                ),
                Text(
                  "25 %",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
                Text(
                  "Press button to downloads",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.file_download),
        ),
      ),
    );
  }
}
