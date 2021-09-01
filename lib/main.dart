import 'package:flutter/material.dart';

void main() => runApp(AplikasiKu());

class AplikasiKu extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => AplikasiKu(),
          '/kedua': (context) => AplikasiKuKedua()
        },
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
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ))),
                    Container(color: Colors.redAccent, child: Text("kedua"))
                  ],
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 200,
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    child: Center(
                        child: ElevatedButton(
                      child: Text(
                        "Klik untuk Pindah ke view kedua - text diperpanjang untuk mengetes fungsi wrap",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/kedua');
                      },
                    )),
                  ),
                ),
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                    Colors.red,
                    Colors.amber,
                    Colors.blue
                  ])),
                  child: Container(
                    width: 500,
                    height: 200,
                    margin: EdgeInsets.fromLTRB(20, 5, 10, 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[Colors.yellow, Colors.teal])),
                  ),
                )
              ],
            )));
  }
}

class AplikasiKuKedua extends StatefulWidget {
  const AplikasiKuKedua({Key? key}) : super(key: key);

  @override
  _AplikasiKuKeduaState createState() => _AplikasiKuKeduaState();
}

class _AplikasiKuKeduaState extends State<AplikasiKuKedua> {
  void sebuahMethod() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini View Kedua"),
        ),
        body: Column(
          children: [
            Text("Ini text awal sebelum menekan tombol"),
            ElevatedButton(
                onPressed: sebuahMethod,
                child: Text("Tombol untuk memanggil fungsi"))
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

// }
