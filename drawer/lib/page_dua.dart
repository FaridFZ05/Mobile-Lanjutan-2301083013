import 'package:drawer/main.dart';
import 'package:flutter/material.dart';
import 'package:drawer/page_satu.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Text("Fanum Tax Rizz"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return HomePage();
              }),
            );
          },
          child: Icon(Icons.keyboard_arrow_left)),
    );
  }
}
