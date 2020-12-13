import 'package:bolum_13/ui/my_app.dart';
import 'package:flutter/material.dart';
//import 'ui/my_app.dart';

import 'ui/resim_ve_buton_turleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      // uygulamanın adı
      title: "flutter",
      home: MyHomePage(
        title: "My Home Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;
  MyHomePage({this.title}) {
    debugPrint("MyHomePage stateful widget constructor ");
  }
  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage create state tetiklendi");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    debugPrint("MyHomePageState constructor  tetiklendi");
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState build  tetiklendi");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _sayacDegeriniArttir();
          debugPrint("sayac değeri arttırıldı");
        },
        child: Icon(
          Icons.add,
          size: 36,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                _sayacDegeriniArttir();
              },
              child: Text("Arttır"),
              color: Colors.green,
            ),
            Text(
              "${widget.sayac}",
              style: TextStyle(
                  fontSize: 30,
                  color: widget.sayac < 0 ? Colors.red : Colors.green),
            ),
            RaisedButton(
              onPressed: () {
                _sayacDegeriniAzalt();
              },
              child: Text("Azalt"),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  _sayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("sayac: ${widget.sayac}");
    });
  }

  _sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("sayac: ${widget.sayac}");
    });
  }
}
