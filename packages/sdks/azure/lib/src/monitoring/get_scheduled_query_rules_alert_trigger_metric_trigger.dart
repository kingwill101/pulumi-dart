// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScheduledQueryRulesAlertTriggerMetricTrigger {
  final pulumi.Input<String> metricColumn;
  final pulumi.Input<String> metricTriggerType;
  /// Evaluation operation for rule.
  final pulumi.Input<String> operator;
  /// Result or count threshold based on which rule should be triggered.
  final pulumi.Input<double> threshold;

  /// Creates a new [GetScheduledQueryRulesAlertTriggerMetricTrigger].
  /// [metricColumn] Required.
  /// [metricTriggerType] Required.
  /// [operator] Evaluation operation for rule.
  /// [threshold] Result or count threshold based on which rule should be triggered.
  GetScheduledQueryRulesAlertTriggerMetricTrigger({
    required this.metricColumn,
    required this.metricTriggerType,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricColumn': metricColumn,
      'metricTriggerType': metricTriggerType,
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory GetScheduledQueryRulesAlertTriggerMetricTrigger.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertTriggerMetricTrigger(
      metricColumn: pulumi.Input.fromValue(map['metricColumn'] as String),
      metricTriggerType: pulumi.Input.fromValue(map['metricTriggerType'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}

