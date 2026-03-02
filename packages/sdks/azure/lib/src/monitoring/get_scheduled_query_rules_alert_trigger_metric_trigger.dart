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
      metricColumn: (map['metricColumn'] as String).input(),
      metricTriggerType: (map['metricTriggerType'] as String).input(),
      operator: (map['operator'] as String).input(),
      threshold: (map['threshold'] as double).input(),
    );
  }
}

