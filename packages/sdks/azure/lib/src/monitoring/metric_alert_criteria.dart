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
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricAlertCriteriaDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  MetricAlertCriteriaDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
      'threshold': threshold,
    };
  }

  factory MetricAlertCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertCriteria(
      aggregation: pulumi.Input.fromValue(map['aggregation'] as String),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricAlertCriteriaDimension>(
            guardedValue,
            (value) => MetricAlertCriteriaDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      skipMetricValidation: (() {
        final guardedValue = map['skipMetricValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}
