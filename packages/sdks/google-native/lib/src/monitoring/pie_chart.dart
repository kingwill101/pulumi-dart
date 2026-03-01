// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pie_chart_chart_type.dart';
import 'pie_chart_data_set.dart';

/// A widget that displays timeseries data as a pie or a donut.
class PieChart {
  /// Indicates the visualization type for the PieChart.
  final PieChartChartType chartType;
  /// The queries for the chart's data.
  final List<PieChartDataSet> dataSets;
  /// Optional. Indicates whether or not the pie chart should show slices' labels
  final bool? showLabels;

  /// Creates a new [PieChart].
  /// [chartType] Indicates the visualization type for the PieChart.
  /// [dataSets] The queries for the chart's data.
  /// [showLabels] Optional. Indicates whether or not the pie chart should show slices' labels
  PieChart({
    required this.chartType,
    required this.dataSets,
    this.showLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartType': chartType.value,
      'dataSets': pulumi.Input.encodeList<PieChartDataSet, Map<String, dynamic>>(dataSets, (value) => value.toMap()),
      'showLabels': ?showLabels,
    };
  }

  factory PieChart.fromMap(Map<String, dynamic> map) {
    return PieChart(
      chartType: PieChartChartType.fromValue(map['chartType'] as String),
      dataSets: pulumi.Input.decodeList<PieChartDataSet>(map['dataSets'], (value) => PieChartDataSet.fromMap((value as Map).cast<String, dynamic>())),
      showLabels: map['showLabels'] == null ? null : map['showLabels'] as bool,
    );
  }
}

