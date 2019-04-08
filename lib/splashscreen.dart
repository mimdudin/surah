import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    return Timer(Duration(seconds: 2),
        () => Navigator.of(context).pushReplacementNamed('/main'));
  }

  @override
  void initState() {
    super.initState(); 
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
                child: Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/qr.jpg'),
            ))));
  }
}