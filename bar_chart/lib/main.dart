import 'package:bar_chart/bar_chart_with_pack.dart';
import 'package:bar_chart/bar_chart_wo_pack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //BarChartWOPack(),
          BarChartWithPack(),
    );
  }
}
