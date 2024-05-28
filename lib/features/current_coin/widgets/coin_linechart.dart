import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CoinLineChart extends StatelessWidget {
  final List<double> chartsData;
  const CoinLineChart({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: chartsData
                  .asMap()
                  .entries
                  .map((e) => FlSpot(e.key.toDouble(), e.value))
                  .toList(),
              isCurved: true,
              color: Colors.blue,
              barWidth: 2,
            ),
          ],
        ),
      ),
    );
  }
}

// [123, 345, 456] -> {'0': 123, '1': 345}
