// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_criteria_dimension.dart';

class MetricAlertCriteria {
  /// The statistic that runs over the metric values. Possible values are `Average`, `Count`, `Minimum`, `Maximum` and `Total`.
  final pulumi.Input<String> aggregation;
  /// One or more `dimension` blocks as defined below.
  final pulumi.Input<List<MetricAlertCriteriaDimension>>? dimensions;
  /// One of the metric names to be monitored.
  final pulumi.Input<String> metricName;
  /// One of the metric namespaces to be monitored.
  final pulumi.Input<String> metricNamespace;
  /// The criteria operator. Possible values are `Equals`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  final pulumi.Input<String> operator;
  /// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to `false`.
  final pulumi.Input<bool>? skipMetricValidation;
  /// The criteria threshold value that activates the alert.
  final pulumi.Input<double> threshold;

  /// Creates a new [MetricAlertCriteria].
  /// [aggregation] The statistic that runs over the metric values. Possible values are `Average`, `Count`, `Minimum`, `Maximum` and `Total`.
  /// [dimensions] One or more `dimension` blocks as defined below.
  /// [metricName] One of the metric names to be monitored.
  /// [metricNamespace] One of the metric namespaces to be monitored.
  /// [operator] The criteria operator. Possible values are `Equals`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  /// [skipMetricValidation] Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to `false`.
  /// [threshold] The criteria threshold value that activates the alert.
  MetricAlertCriteria({
    required this.aggregation,
    this.dimensions,
    required this.metricName,
    required this.metricNamespace,
    required this.operator,
    this.skipMetricValidation,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': aggregation,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<MetricAlertCriteriaDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<MetricAlertCriteriaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
      'threshold': threshold,
    };
  }

  factory MetricAlertCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertCriteria(
      aggregation: (map['aggregation'] as String).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<MetricAlertCriteriaDimension>(map['dimensions']!, (value) => MetricAlertCriteriaDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricName: (map['metricName'] as String).input(),
      metricNamespace: (map['metricNamespace'] as String).input(),
      operator: (map['operator'] as String).input(),
      skipMetricValidation: map['skipMetricValidation'] == null ? null : (map['skipMetricValidation']! as bool).input(),
      threshold: (map['threshold'] as double).input(),
    );
  }
}

