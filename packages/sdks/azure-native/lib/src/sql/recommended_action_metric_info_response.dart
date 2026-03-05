// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains time series of various impacted metrics for an Azure SQL Database, Server or Elastic Pool Recommended Action.
class RecommendedActionMetricInfoResponse {
  /// Gets the name of the metric. e.g., CPU, Number of Queries.
  final pulumi.Input<String> metricName;
  /// Gets the start time of time interval given by this MetricInfo.
  final pulumi.Input<String> startTime;
  /// Gets the duration of time interval for the value given by this MetricInfo. e.g., PT1H (1 hour)
  final pulumi.Input<String> timeGrain;
  /// Gets the unit in which metric is measured. e.g., DTU, Frequency
  final pulumi.Input<String> unit;
  /// Gets the value of the metric in the time interval given by this MetricInfo.
  final pulumi.Input<double> value;

  /// Creates a new [RecommendedActionMetricInfoResponse].
  /// [metricName] Gets the name of the metric. e.g., CPU, Number of Queries.
  /// [startTime] Gets the start time of time interval given by this MetricInfo.
  /// [timeGrain] Gets the duration of time interval for the value given by this MetricInfo. e.g., PT1H (1 hour)
  /// [unit] Gets the unit in which metric is measured. e.g., DTU, Frequency
  /// [value] Gets the value of the metric in the time interval given by this MetricInfo.
  RecommendedActionMetricInfoResponse({
    required this.metricName,
    required this.startTime,
    required this.timeGrain,
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'startTime': startTime,
      'timeGrain': timeGrain,
      'unit': unit,
      'value': value,
    };
  }

  factory RecommendedActionMetricInfoResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionMetricInfoResponse(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

