import 'package:flutter/material.dart';

class LatihanSTF extends StatefulWidget {
  const LatihanSTF({Key? key}) : super(key: key);
  @override
  _LatihanSTFState createState() => _LatihanSTFState();
}

class _LatihanSTFState extends State<LatihanSTF> {
  void countUp() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan STF"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count Number", style: TextStyle(
                fontSize: 24
              ),),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text("0", style: TextStyle(
                    fontSize: 16
                  ),)),
              ElevatedButton(onPressed: countUp, child: Text("Count UP"))
            ],
          ),
        ),
      ),
    );
  }
}
