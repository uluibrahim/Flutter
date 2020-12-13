import 'package:flutter/material.dart';
import 'resim_ve_buton_turleri.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bolum 13",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("fab tıklandı"),
          child: Icon(
            Icons.alarm_add,
            size: 34,
          ),
        ),
        body: ResimVeButtonTurleri(),
      ),
    );
  }
}
