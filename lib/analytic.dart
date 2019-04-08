import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';

class AnalyticsView extends StatefulWidget {
  @override
  _AnalyticsViewState createState() => _AnalyticsViewState();
}

class _AnalyticsViewState extends State<AnalyticsView> {
  Map _analytics = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
              RaisedButton(
                child: Text("getAnalytics(null)"),
                onPressed: () async {
                  Map records = await PdfViewer.getAnalytics(null);
                  setState(() => _analytics = records);
                },
              ),
            ] +
            _analytics.keys
                .map((page) => Text("$page - ${_analytics[page]}"))
                .toList(),
      ),
    );
  }
}