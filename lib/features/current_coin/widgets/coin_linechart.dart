import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CoinLineChart extends StatelessWidget {
  final List<double> chartsData;
  const CoinLineChart({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(show: true),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: chartsData
                  .asMap()
                  .entries
                  .map((e) => FlSpot(e.key.toDouble(), e.value))
                  .toList(),
              isCurved: true,
              color: app_theme.primaryColor,
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                color: app_theme.primaryColor.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// [123, 345, 456] -> {'0': 123, '1': 345}
