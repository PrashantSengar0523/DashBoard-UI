import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      isShowingMainData ? sampleData1 : sampleData2,
      duration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 6,
        maxY: 30,
        minY: 0,
      );

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 0,
        maxX: 6,
        maxY: 30,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_2,
        lineChartBarData1_3,
      ];

  LineTouchData get lineTouchData2 => const LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_2,
        lineChartBarData2_3,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 12, color: Colors.deepPurple);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 10:
        text = '10';
        break;
      case 20:
        text = '20';
        break;
      case 30:
        text = '30';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 10,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 12, color: Colors.deepPurple);
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('2015', style: style);
        break;
      case 1:
        text = const Text('2016', style: style);
        break;
      case 2:
        text = const Text('2017', style: style);
        break;
      case 3:
        text = const Text('2018', style: style);
        break;
      case 4:
        text = const Text('2019', style: style);
        break;
      case 5:
        text = const Text('2020', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade400, width: 2),
          left: BorderSide(color: Colors.grey.shade400, width: 2),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        shadow: BoxShadow(
          color: Colors.deepPurple.withOpacity(0.1),
        ),
        isCurved: true,
        color: Colors.deepPurple,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true, // Enable the below bar data
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.withOpacity(0.3),
              Colors.deepPurple.withOpacity(0.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        spots: const [
          FlSpot(0, 10),
          FlSpot(1, 5),
          FlSpot(2, 30),
          FlSpot(3, 11),
          FlSpot(4, 14),
          FlSpot(5, 25),
          FlSpot(6, 15),
        ],
      );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
        isCurved: true,
        color: Colors.pinkAccent,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 20),
          FlSpot(1, 9),
          FlSpot(2, 23),
          FlSpot(3, 30),
          FlSpot(4, 10),
          FlSpot(5, 30),
          FlSpot(6, 15),
        ],
      );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: Colors.pinkAccent.withOpacity(0.5),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: Colors.pinkAccent.withOpacity(0.2),
        ),
        spots: const [
          FlSpot(0, 20),
          FlSpot(1, 9),
          FlSpot(2, 23),
          FlSpot(3, 30),
          FlSpot(4, 10),
          FlSpot(5, 30),
          FlSpot(6, 15),
        ],
      );

  LineChartBarData get lineChartBarData2_3 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: Colors.cyan.withOpacity(0.5),
        barWidth: 0,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 38),
          FlSpot(1, 19),
          FlSpot(2, 50),
          FlSpot(3, 33),
          FlSpot(4, 45),
        ],
      );
}

class LineChartSample1 extends StatefulWidget {
  const LineChartSample1({super.key});

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(left: 12.0), // Adjust padding as needed
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Over All Performance\n This Years',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                  child: _LineChart(isShowingMainData: isShowingMainData),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          const Positioned(
            top: 10,
            right: 40,
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.circle, color: Colors.pink, size: 12),
                    SizedBox(width: 4),
                    Text(
                      'Pending',
                      style: TextStyle(color: Colors.pink, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 40),
                Row(
                  children: [
                    Icon(Icons.circle, color: Colors.purple, size: 12),
                    SizedBox(width: 4),
                    Text(
                      'Done',
                      style: TextStyle(color: Colors.purple, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
