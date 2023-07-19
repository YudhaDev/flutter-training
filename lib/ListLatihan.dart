import 'package:flutter/material.dart';

class ListLatihan extends StatelessWidget {
  const ListLatihan({Key? key}) : super(key: key);
  void toLatihan1(){

  }
  void toLatihanStatefullWidget(){

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}
