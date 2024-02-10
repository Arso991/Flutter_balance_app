import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 250,
        width: double.infinity,
        child: LineChart(LineChartData(
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 70000,
            titlesData: FlTitlesData(
              show: false,
            ),
            gridData: FlGridData(
              show: false,
              getDrawingHorizontalLine: (value) {
                return FlLine(color: Colors.grey[800], strokeWidth: 1);
              },
            ),
            borderData: FlBorderData(
                show: false,
                border: Border.all(color: Colors.blueGrey, width: 2)),
            lineBarsData: [
              LineChartBarData(
                  spots: [
                    FlSpot(0, 30000),
                    FlSpot(2.5, 10000),
                    FlSpot(4, 50000),
                    FlSpot(6, 43000),
                    FlSpot(8, 40000),
                    FlSpot(9, 30000),
                    FlSpot(11, 38000),
                  ],
                  isCurved: true,
                  color: Color.fromARGB(255, 46, 157, 247),
                  barWidth: 2,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Color.fromARGB(255, 205, 229, 248),
                  ))
            ])),
      ),
    ));
  }
}
