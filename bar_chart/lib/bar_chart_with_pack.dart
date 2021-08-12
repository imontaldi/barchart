import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWithPack extends StatefulWidget {
  BarChartWithPack({Key? key}) : super(key: key);

  @override
  _BarChartWithPackState createState() => _BarChartWithPackState();
}

class _BarChartWithPackState extends State<BarChartWithPack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: AspectRatio(
            aspectRatio: 1.4,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              color: Color(0xffF6F6F6),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.center,
                    groupsSpace: 50,
                    barTouchData: BarTouchData(
                      enabled: true,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 12,
                        ),
                        margin: 10,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return '02';
                            case 1:
                              return '03';
                            case 2:
                              return '04';
                            case 3:
                              return '05';
                            case 4:
                              return '06';
                            case 5:
                              return '07';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTitles: (double value) {
                          if (value % 550 == 0) {
                            return value.toInt().toString();
                          }
                          return '';
                        },
                        getTextStyles: (value) => const TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 10,
                        ),
                        margin: 5,
                      ),
                    ),
                    gridData: FlGridData(
                      show: true,
                      checkToShowHorizontalLine: (value) => value % 550 == 0,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: const Color(0xffDADADA),
                        strokeWidth: 1,
                        dashArray: [5, 3],
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: getData(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: -8,
        barRods: [
          BarChartRodData(
            y: 2800,
            rodStackItems: [BarChartRodStackItem(0, 2750, Colors.white)],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1750,
            rodStackItems: [BarChartRodStackItem(0, 1750, Color(0xffF6B2A8))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1650,
            rodStackItems: [BarChartRodStackItem(0, 1650, Color(0xffEB7743))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 600,
            rodStackItems: [BarChartRodStackItem(0, 600, Color(0xffD91315))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: -8,
        barRods: [
          BarChartRodData(
            y: 2800,
            rodStackItems: [BarChartRodStackItem(0, 2750, Colors.white)],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1625,
            rodStackItems: [BarChartRodStackItem(0, 1625, Color(0xffF6B2A8))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1550,
            rodStackItems: [BarChartRodStackItem(0, 1550, Color(0xffEB7743))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 575,
            rodStackItems: [BarChartRodStackItem(0, 575, Color(0xffD91315))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: -8,
        barRods: [
          BarChartRodData(
            y: 2800,
            rodStackItems: [BarChartRodStackItem(0, 2750, Colors.white)],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1750,
            rodStackItems: [BarChartRodStackItem(0, 1750, Color(0xffF6B2A8))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1650,
            rodStackItems: [BarChartRodStackItem(0, 1650, Color(0xffEB7743))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 600,
            rodStackItems: [BarChartRodStackItem(0, 600, Color(0xffD91315))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: -8,
        barRods: [
          BarChartRodData(
            y: 2800,
            rodStackItems: [BarChartRodStackItem(0, 2750, Colors.white)],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1750,
            rodStackItems: [BarChartRodStackItem(0, 1750, Color(0xffF6B2A8))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1650,
            rodStackItems: [BarChartRodStackItem(0, 1650, Color(0xffEB7743))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 600,
            rodStackItems: [BarChartRodStackItem(0, 600, Color(0xffD91315))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: -8,
        barRods: [
          BarChartRodData(
            y: 2800,
            rodStackItems: [BarChartRodStackItem(0, 2750, Colors.white)],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1750,
            rodStackItems: [BarChartRodStackItem(0, 1750, Color(0xffF6B2A8))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1650,
            rodStackItems: [BarChartRodStackItem(0, 1650, Color(0xffEB7743))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 600,
            rodStackItems: [BarChartRodStackItem(0, 600, Color(0xffD91315))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: -8,
        barRods: [
          BarChartRodData(
            y: 2800,
            rodStackItems: [BarChartRodStackItem(0, 2750, Colors.white)],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1750,
            rodStackItems: [BarChartRodStackItem(0, 1750, Color(0xffF6B2A8))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 1650,
            rodStackItems: [BarChartRodStackItem(0, 1650, Color(0xffEB7743))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          BarChartRodData(
            y: 600,
            rodStackItems: [BarChartRodStackItem(0, 600, Color(0xffD91315))],
            colors: [Colors.transparent],
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
        ],
      ),
    ];
  }
}
