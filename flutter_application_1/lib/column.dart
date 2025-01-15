import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Column"),
          ),
          body: Row(
            children: [
              Container(
                width: 400,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 20,
                color: Colors.yellow,
              ),
              Container(
                width: 300,
                height: 20,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 20,
                color: Colors.red,
              ),
            ],
          ),
        ));
  }
}
