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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<MetricAlertDynamicCriteriaDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<MetricAlertDynamicCriteriaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      aggregation: (map['aggregation'] as String).input(),
      alertSensitivity: (map['alertSensitivity'] as String).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<MetricAlertDynamicCriteriaDimension>(map['dimensions']!, (value) => MetricAlertDynamicCriteriaDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      evaluationFailureCount: map['evaluationFailureCount'] == null ? null : (map['evaluationFailureCount']! as int).input(),
      evaluationTotalCount: map['evaluationTotalCount'] == null ? null : (map['evaluationTotalCount']! as int).input(),
      ignoreDataBefore: map['ignoreDataBefore'] == null ? null : (map['ignoreDataBefore']! as String).input(),
      metricName: (map['metricName'] as String).input(),
      metricNamespace: (map['metricNamespace'] as String).input(),
      operator: (map['operator'] as String).input(),
      skipMetricValidation: map['skipMetricValidation'] == null ? null : (map['skipMetricValidation']! as bool).input(),
    );
  }
}

