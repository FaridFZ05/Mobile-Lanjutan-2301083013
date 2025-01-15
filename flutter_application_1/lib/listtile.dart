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
            title: Text("List Tile"),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Farid Fadlizil Ikram"),
                subtitle: Text("Aku Raja Anime"),
                leading: CircleAvatar(),
                trailing: Text("10:00 PM"),
              ),
              ListTile(
                title: Text("Zaki Ramadhan"),
                subtitle: Text("Aku Negro Kamu Putih"),
                leading: CircleAvatar(),
                trailing: Text("69:69 PM"),
              ),
            ],
          ),
        ));
  }
}
