import 'package:flutter/material.dart';

void main() => runApp(AplikasiKu());

class AplikasiKu extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ini Aplikasi Flutter Pertama")),
        body: Center(child: Text("Halo Dunia, uhuyy jajjaaj"))
        )
    );
  }
}
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

// }
