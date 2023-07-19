
import 'package:flutter/material.dart';
import 'package:flutter_application_1/latihan_basic/latihanSTF.dart';

class ProfileView extends StatelessWidget {
  void _toLatihan1() {}
  void _showNotImplemented(BuildContext context) {
    ()=> showDialog<String>(context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("Perhatian"),
          content: Text("Fungsi belum diimplementasikan, silahkan tunggu update selanjutnya."),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context, "Cancel"), child: Text("Cancel")),
            TextButton(onPressed: () => Navigator.pop(context, "Ok"), child: Text("OK"))
          ],
        )
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini Halaman Profile"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Selamat Datang diprofilku, berikut latihan yang saya tempuh"
                "saat belajar flutter.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
              ),
              child: ElevatedButton(
                onPressed: _toLatihan1,
                child: Text("LatihanSTL"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
              ),
              child: ElevatedButton(
                onPressed: null,
                child: Text("LatihanContainerSTL"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return LatihanSTF();
                })),
                child: Text("LatihanSTF"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
