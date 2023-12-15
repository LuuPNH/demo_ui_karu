import 'package:flutter/material.dart';
import '../../../resources/colors.dart' as Style;

import '../../../utils/button_in_chart.dart';
import 'chart/chart_widget.dart';

class ViewChart extends StatefulWidget {
  const ViewChart({Key? key}) : super(key: key);

  @override
  _ViewChartState createState() => _ViewChartState();
}

class _ViewChartState extends State<ViewChart> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 293,
      child: Center(
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0, 1),
                colors: <Color>[Style.Colors.blue400, Style.Colors.background],
                // red to yellow
                tileMode:
                    TileMode.mirror, // repeats the gradient over the canvas
              ),
            ),
            child: Column(
              children: const [ButtonInChart(), ChartWidget()],
            )),
      ),
    );
  }
}
