import 'package:flutter/material.dart';
import 'menu.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    title: 'Batik-Ku',
    home: Screen(),
  ));
}

class Screen extends StatefulWidget {
  @override
  Awal_ createState() => Awal_();
}

// ignore: camel_case_types
class Awal_ extends State<Screen> {
  @override
  void initState() {
    super.initState();
    starSplashScreen();
  }

  starSplashScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return Menu();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: Container(
                child: Image(
              image: AssetImage('assets/images/splash.png'),
            )),
          ),
        ]),
      ),
    );
  }
}
