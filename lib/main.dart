import 'package:flutter/material.dart';

void main() => runApp(AplikasiKu());

class AplikasiKu extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Ini Aplikasi Flutter Pertama")),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ini row pertama"),
                Text("ini row kedua"),
                Row(
                  children: [
                    Center(
                        child: Container(
                          color: Colors.lightBlue,
                          width: 200,
                          height: 50,
                            child: Text(
                      "Halo Dunia, uhuyy jajjaaj test test",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, ),
                    ))),
                    Container(
                      color: Colors.redAccent,

                      child: Text("kedua"))
                  ],
                )
              ],
            )));
  }
}
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

// }
