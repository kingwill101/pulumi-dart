// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A sparkChart is a small chart suitable for inclusion in a table-cell or inline in text. This message contains the configuration for a sparkChart to show up on a Scorecard, showing recent trends of the scorecard's timeseries.
class SparkChartViewResponse {
  /// The lower bound on data point frequency in the chart implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes it would not make sense to fetch and align data at one minute intervals. This field is optional and exists only as a hint.
  final pulumi.Input<String> minAlignmentPeriod;
  /// The type of sparkchart to show in this chartView.
  final pulumi.Input<String> sparkChartType;

  /// Creates a new [SparkChartViewResponse].
  /// [minAlignmentPeriod] The lower bound on data point frequency in the chart implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes it would not make sense to fetch and align data at one minute intervals. This field is optional and exists only as a hint.
  /// [sparkChartType] The type of sparkchart to show in this chartView.
  SparkChartViewResponse({
    required this.minAlignmentPeriod,
    required this.sparkChartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAlignmentPeriod': minAlignmentPeriod,
      'sparkChartType': sparkChartType,
    };
  }

  factory SparkChartViewResponse.fromMap(Map<String, dynamic> map) {
    return SparkChartViewResponse(
      minAlignmentPeriod: (map['minAlignmentPeriod'] as String).input(),
      sparkChartType: (map['sparkChartType'] as String).input(),
    );
  }
}

