import 'package:flutter/material.dart';
import 'package:drawer/page_satu.dart';
import 'package:drawer/page_dua.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Menu Pilihan",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PageSatu(),
                ));
              },
              leading: Icon(Icons.home),
              title: Text("Page 1"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PageDua(),
                ));
              },
              leading: Icon(Icons.add_comment),
              title: Text("Page 2"),
            )
          ],
        ),
      ),
    );
  }
}
