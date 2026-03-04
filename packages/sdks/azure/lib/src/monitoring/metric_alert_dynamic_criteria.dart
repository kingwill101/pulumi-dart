// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_dynamic_criteria_dimension.dart';

class MetricAlertDynamicCriteria {
  /// The statistic that runs over the metric values. Possible values are `Average`, `Count`, `Minimum`, `Maximum` and `Total`.
  final pulumi.Input<String> aggregation;

  /// The extent of deviation required to trigger an alert. Possible values are `Low`, `Medium` and `High`.
  final pulumi.Input<String> alertSensitivity;

  /// One or more `dimension` blocks as defined below.
  final pulumi.Input<List<MetricAlertDynamicCriteriaDimension>>? dimensions;

  /// The number of violations to trigger an alert. Should be smaller or equal to `evaluation_total_count`. Defaults to `4`.
  final pulumi.Input<int>? evaluationFailureCount;

  /// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (`window_size`) and the selected number of aggregated points. Defaults to `4`.
  final pulumi.Input<int>? evaluationTotalCount;

  /// The [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date from which to start learning the metric historical data and calculate the dynamic thresholds.
  final pulumi.Input<String>? ignoreDataBefore;

  /// One of the metric names to be monitored.
  final pulumi.Input<String> metricName;

  /// One of the metric namespaces to be monitored.
  final pulumi.Input<String> metricNamespace;

  /// The criteria operator. Possible values are `LessThan`, `GreaterThan` and `GreaterOrLessThan`.
  final pulumi.Input<String> operator;

  /// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
  final pulumi.Input<bool>? skipMetricValidation;

  /// Creates a new [MetricAlertDynamicCriteria].
  /// [aggregation] The statistic that runs over the metric values. Possible values are `Average`, `Count`, `Minimum`, `Maximum` and `Total`.
  /// [alertSensitivity] The extent of deviation required to trigger an alert. Possible values are `Low`, `Medium` and `High`.
  /// [dimensions] One or more `dimension` blocks as defined below.
  /// [evaluationFailureCount] The number of violations to trigger an alert. Should be smaller or equal to `evaluation_total_count`. Defaults to `4`.
  /// [evaluationTotalCount] The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (`window_size`) and the selected number of aggregated points. Defaults to `4`.
  /// [ignoreDataBefore] The [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date from which to start learning the metric historical data and calculate the dynamic thresholds.
  /// [metricName] One of the metric names to be monitored.
  /// [metricNamespace] One of the metric namespaces to be monitored.
  /// [operator] The criteria operator. Possible values are `LessThan`, `GreaterThan` and `GreaterOrLessThan`.
  /// [skipMetricValidation] Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
  MetricAlertDynamicCriteria({
    required this.aggregation,
    required this.alertSensitivity,
    this.dimensions,
    this.evaluationFailureCount,
    this.evaluationTotalCount,
    this.ignoreDataBefore,
    required this.metricName,
    required this.metricNamespace,
    required this.operator,
    this.skipMetricValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': aggregation,
      'alertSensitivity': alertSensitivity,
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricAlertDynamicCriteriaDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  MetricAlertDynamicCriteriaDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'evaluationFailureCount': ?evaluationFailureCount,
      'evaluationTotalCount': ?evaluationTotalCount,
      'ignoreDataBefore': ?ignoreDataBefore,
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
    };
  }

  factory MetricAlertDynamicCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertDynamicCriteria(
      aggregation: pulumi.Input.fromValue(map['aggregation'] as String),
      alertSensitivity: pulumi.Input.fromValue(
        map['alertSensitivity'] as String,
      ),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricAlertDynamicCriteriaDimension>(
            guardedValue,
            (value) => MetricAlertDynamicCriteriaDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      evaluationFailureCount: (() {
        final guardedValue = map['evaluationFailureCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      evaluationTotalCount: (() {
        final guardedValue = map['evaluationTotalCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ignoreDataBefore: (() {
        final guardedValue = map['ignoreDataBefore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      skipMetricValidation: (() {
        final guardedValue = map['skipMetricValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
