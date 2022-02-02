import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'bandwidth.dart';

class Chart extends StatelessWidget {
  final List<Bandwidth> data;
  const Chart({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Bandwidth, String>> series = [
      charts.Series(
          data: data,
          domainFn: (Bandwidth b, _) => b.bandwidth.toString(),
          id: "bandwidth",
          measureFn: (b, _) => b.time.hour)
    ];

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
