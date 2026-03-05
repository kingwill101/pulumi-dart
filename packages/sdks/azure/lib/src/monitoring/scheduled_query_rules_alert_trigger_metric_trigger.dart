// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertTriggerMetricTrigger {
  /// Evaluation of metric on a particular column.
  final pulumi.Input<String>? metricColumn;
  /// Metric Trigger Type - 'Consecutive' or 'Total'.
  final pulumi.Input<String> metricTriggerType;
  /// Evaluation operation for rule - 'Equal', 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  final pulumi.Input<String> operator;
  /// The threshold of the metric trigger. Values must be between 0 and 10000 inclusive.
  final pulumi.Input<double> threshold;

  /// Creates a new [ScheduledQueryRulesAlertTriggerMetricTrigger].
  /// [metricColumn] Evaluation of metric on a particular column.
  /// [metricTriggerType] Metric Trigger Type - 'Consecutive' or 'Total'.
  /// [operator] Evaluation operation for rule - 'Equal', 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  /// [threshold] The threshold of the metric trigger. Values must be between 0 and 10000 inclusive.
  ScheduledQueryRulesAlertTriggerMetricTrigger({
    this.metricColumn,
    required this.metricTriggerType,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricColumn': ?metricColumn,
      'metricTriggerType': metricTriggerType,
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory ScheduledQueryRulesAlertTriggerMetricTrigger.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertTriggerMetricTrigger(
      metricColumn: (() { final guardedValue = map['metricColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricTriggerType: pulumi.Input.fromValue(map['metricTriggerType'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}

