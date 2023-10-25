import 'dart:math';

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
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "BUGÜN NE YESEM?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbano = 1;
  int yemekno = 1;
  int tatlino = 1;

  List<String> corbaadlari = [
    'mercimek',
    'tarhana',
    'tavuksuyu',
    'düğün',
    'ezogelin'
  ];
  List<String> yemekadlari = [
    'içli köfte',
    'mantı',
    'kurufasulye',
    'karnıyarık',
    'cirgindiş'
  ];
  List<String> tatliadlari = [
    'kazandibi',
    'dondurma',
    'kadayıf',
    'sütlaç',
    'baklava'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/images/corba_$corbano.jpg')),
          )),
          Text(corbaadlari[corbano - 1]),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    yemekno = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/images/yemek_$yemekno.jpg')),
          )),
          Text(yemekadlari[yemekno-1]),
          Container(
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
            width: 200,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    tatlino = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/images/tatli_$tatlino.jpg')),
          )),
    Text(tatliadlari[tatlino-1]),
        ],
      ),
    );
  }

  void yemekleriYenile() {
    setState(() {
      corbano = Random().nextInt(5) + 1;
      yemekno = Random().nextInt(5) + 1;
      tatlino = Random().nextInt(5) + 1;
    });
  }
}
