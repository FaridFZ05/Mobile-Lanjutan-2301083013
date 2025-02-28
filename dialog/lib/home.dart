import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String data = "Belum ada Input";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah di Klik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("OK"),
                content: Text("Apakah di hapus?"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {
                          data = "TRUE";
                        });
                      },
                      child: Text("Yes")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {
                          data = "FALSE";
                        });
                      },
                      child: Text("No"))
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
