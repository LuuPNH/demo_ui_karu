import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  final List<FlSpot> value = const [
    FlSpot(1, 105.72),
    FlSpot(2, 106.13),
    FlSpot(3, 105.83),
    FlSpot(4, 105.90),
    FlSpot(5, 106.36),
    FlSpot(6, 105.92),
    FlSpot(7, 105.70),
    FlSpot(8, 105.99),
    FlSpot(9, 106.18),
    FlSpot(10, 105.70),
    FlSpot(11, 105.72),
    FlSpot(12, 106.13),
    FlSpot(13, 105.83),
    FlSpot(14, 105.90),
    FlSpot(15, 106.36),
    FlSpot(16, 105.92),
    FlSpot(17, 105.70),
    FlSpot(18, 105.99),
    FlSpot(19, 106.18),
    FlSpot(20, 105.70),
    FlSpot(21, 105.72),
    FlSpot(22, 106.13),
    FlSpot(23, 105.83),
    FlSpot(24, 105.90),
    FlSpot(25, 106.36),
    FlSpot(26, 105.92),
    FlSpot(27, 105.70),
    FlSpot(28, 105.99),
    FlSpot(29, 106.18),
    FlSpot(30, 105.70),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:  375 / 235,
      child: Container(
        margin: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                  maxContentWidth: 50,
                  tooltipBgColor: Colors.transparent,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots.map((LineBarSpot touchedSpot) {
                      final textStyle = TextStyle(
                        color: touchedSpot.bar.colors[0],
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      );
                      return LineTooltipItem(
                          '${touchedSpot.x}, ${touchedSpot.y.toStringAsFixed(10)}',
                          textStyle);
                    }).toList();
                  }),
              handleBuiltInTouches: true,
              getTouchLineStart: (data, index) => 0,
            ),
            lineBarsData: [
              LineChartBarData(
                colors: [
                  Colors.white,
                ],
                spots: value,
                isCurved: true,
                isStrokeCapRound: true,
                barWidth: 2,
                belowBarData: BarAreaData(
                  show: false,
                ),
                dotData: FlDotData(show: false),
              ),
            ],
            minY: 105.5,
            maxY: 106.5,
            titlesData: FlTitlesData(
              rightTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) => const TextStyle(
                      color: Colors.white,
                      fontFamily: 'HiraginoMaruGothicStdN',
                      fontWeight: FontWeight.normal,
                      fontSize: 8),
                  margin: 10,
                  reservedSize: 30),
              leftTitles: SideTitles(showTitles: false),
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) => const TextStyle(
                      color: Colors.white,
                      fontFamily: 'HiraginoMaruGothicStdN',
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  margin: 16,
                  reservedSize: 5),
              topTitles: SideTitles(showTitles: false),
            ),
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: true,
              drawVerticalLine: false,
              horizontalInterval: 0.2,
            ),
            borderData: FlBorderData(show: false),
          ),
        ),
      ),
    );
  }
}

class Dot {
  final double X;
  final double Y;

  Dot(this.X, this.Y);
}
