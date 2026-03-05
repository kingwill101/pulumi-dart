// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pie_chart_data_set_response.dart';

/// A widget that displays timeseries data as a pie or a donut.
class PieChartResponse {
  /// Indicates the visualization type for the PieChart.
  final pulumi.Input<String> chartType;
  /// The queries for the chart's data.
  final pulumi.Input<List<PieChartDataSetResponse>> dataSets;
  /// Optional. Indicates whether or not the pie chart should show slices' labels
  final pulumi.Input<bool> showLabels;

  /// Creates a new [PieChartResponse].
  /// [chartType] Indicates the visualization type for the PieChart.
  /// [dataSets] The queries for the chart's data.
  /// [showLabels] Optional. Indicates whether or not the pie chart should show slices' labels
  PieChartResponse({
    required this.chartType,
    required this.dataSets,
    required this.showLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartType': chartType,
      'dataSets': pulumi.Input.mapInputValue<List<PieChartDataSetResponse>, List<Map<String, dynamic>>>(dataSets, (value) => pulumi.Input.encodeList<PieChartDataSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'showLabels': showLabels,
    };
  }

  factory PieChartResponse.fromMap(Map<String, dynamic> map) {
    return PieChartResponse(
      chartType: pulumi.Input.fromValue(map['chartType'] as String),
      dataSets: pulumi.Input.fromValue(pulumi.Input.decodeList<PieChartDataSetResponse>(map['dataSets']!, (value) => PieChartDataSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      showLabels: pulumi.Input.fromValue(map['showLabels'] as bool),
    );
  }
}

