// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_chart_data_data_point_response.dart';

/// Describes a collection of data points rendered as a Chart.
class ReportSummaryChartDataResponse {
  /// Each data point in the chart is represented as a name-value pair with the name being the x-axis label, and the value being the y-axis value.
  final pulumi.Input<List<ReportSummaryChartDataDataPointResponse>> dataPoints;

  /// Creates a new [ReportSummaryChartDataResponse].
  /// [dataPoints] Each data point in the chart is represented as a name-value pair with the name being the x-axis label, and the value being the y-axis value.
  const ReportSummaryChartDataResponse({
    required this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': pulumi.Input.mapInputValue<List<ReportSummaryChartDataDataPointResponse>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<ReportSummaryChartDataDataPointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryChartDataResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryChartDataResponse(
      dataPoints: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryChartDataDataPointResponse>(map['dataPoints']!, (value) => ReportSummaryChartDataDataPointResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

