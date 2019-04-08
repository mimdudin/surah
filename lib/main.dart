import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';

import './home.dart';
import './splashscreen.dart';

void main() {
  runApp(new MyApp());
  PdfViewer.enableAnalytics(Duration(milliseconds: 500));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SplashScreen(),
      // new Center(
      //   child: ListView(
      //     children: [
      // AnalyticsView(),
      //     ],
      //   ),
      // )),

      routes: {
        '/main': (BuildContext context) => Home(),
      },
    );
  }
}

var choices = [
  'default',
  'nightMode: true',
  'enableSwipe: false',
  'swipeHorizontal: true',
  'autoSpacing: true',
  'pageFling: true',
  'pageSnap: true',
  'enableImmersive: true',
  'autoPlay: true',
  'slideshow',
  'XOR encrypted',
  'forceLandscape: true',
];