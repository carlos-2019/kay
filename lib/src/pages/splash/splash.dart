import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kay/src/helpers/constants.dart';
import 'package:kay/src/pages/home/home.dart';
import 'package:kay/src/pages/menu/menu.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splah';
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Menu()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              child: Image.asset("assets/images/logo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Bienvenido a KAY",
              style: TextStyle(fontSize: 20.0, color: colorSecundario),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: colorSecundario,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
