import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitur TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              autofocus: false,
              enableSuggestions: true,
              enableInteractiveSelection: false,
              keyboardType: TextInputType.phone,
              readOnly: false,
              style: TextStyle(color: Colors.red, fontSize: 20),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person_add,
                    size: 35,
                  ),
                  hintText: "Silahkan Input Nama",
                  labelText: "Full Name"),
            ),
          ),
        ),
      ),
    );
  }
}
