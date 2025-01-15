import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitted Box"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            // width: 300,
            // height: 110,
            child: FittedBox(
              alignment: Alignment.center,
              child: Image.network("https://picsum.photos/500/500"),
            ),
          ),
        ),
      ),
    );
  }
}
