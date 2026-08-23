// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pie_chart_chart_type.dart';
import 'pie_chart_data_set.dart';

/// A widget that displays timeseries data as a pie or a donut.
class PieChart {
  /// Indicates the visualization type for the PieChart.
  final pulumi.Input<PieChartChartType> chartType;
  /// The queries for the chart's data.
  final pulumi.Input<List<PieChartDataSet>> dataSets;
  /// Optional. Indicates whether or not the pie chart should show slices' labels
  final pulumi.Input<bool>? showLabels;

  /// Creates a new [PieChart].
  /// [chartType] Indicates the visualization type for the PieChart.
  /// [dataSets] The queries for the chart's data.
  /// [showLabels] Optional. Indicates whether or not the pie chart should show slices' labels
  const PieChart({
    required this.chartType,
    required this.dataSets,
    this.showLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartType': pulumi.Input.mapInputValue<PieChartChartType, String>(chartType, (value) => value.wireValue),
      'dataSets': pulumi.Input.mapInputValue<List<PieChartDataSet>, List<Map<String, dynamic>>>(dataSets, (value) => pulumi.Input.encodeList<PieChartDataSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'showLabels': ?showLabels,
    };
  }

  factory PieChart.fromMap(Map<String, dynamic> map) {
    return PieChart(
      chartType: pulumi.Input.fromValue(PieChartChartType.fromValue(map['chartType']! as String)),
      dataSets: pulumi.Input.fromValue(pulumi.Input.decodeList<PieChartDataSet>(map['dataSets']!, (value) => PieChartDataSet.fromMap((value as Map).cast<String, dynamic>()))),
      showLabels: (() { final guardedValue = map['showLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
