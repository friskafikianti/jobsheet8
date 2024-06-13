import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Wrap(
          children: [
            buatKotak(Colors.greenAccent, 100),
            buatKotak(Colors.orangeAccent, 70),
            buatKotak(Colors.greenAccent, 50),
            buatKotakDenganNamaDiBawah(Colors.orangeAccent, 90, "Friska Fikianti"),
            buatKotak(Colors.red, 110),
            buatKotak(Colors.blue, 30),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran) {
  return Container(
    decoration: BoxDecoration(color: warna),
    height: ukuran,
    width: ukuran,
    margin: EdgeInsets.all(10),
  );
}

Widget buatKotakDenganNamaDiBawah(Color warna, double ukuran, String nama) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(color: warna),
        height: ukuran,
        width: ukuran,
        margin: EdgeInsets.all(10),
      ),
      Text(
        nama,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
