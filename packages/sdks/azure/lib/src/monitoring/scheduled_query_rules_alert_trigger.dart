// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_query_rules_alert_trigger_metric_trigger.dart';

class ScheduledQueryRulesAlertTrigger {
  /// A `metric_trigger` block as defined above. Trigger condition for metric query rule.
  final ScheduledQueryRulesAlertTriggerMetricTrigger? metricTrigger;
  /// Evaluation operation for rule - 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  final String operator;
  /// Result or count threshold based on which rule should be triggered. Values must be between 0 and 10000 inclusive.
  final double threshold;

  /// Creates a new [ScheduledQueryRulesAlertTrigger].
  /// [metricTrigger] A `metric_trigger` block as defined above. Trigger condition for metric query rule.
  /// [operator] Evaluation operation for rule - 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  /// [threshold] Result or count threshold based on which rule should be triggered. Values must be between 0 and 10000 inclusive.
  ScheduledQueryRulesAlertTrigger({
    this.metricTrigger,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTrigger': ?metricTrigger == null ? null : metricTrigger!.toMap(),
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory ScheduledQueryRulesAlertTrigger.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertTrigger(
      metricTrigger: map['metricTrigger'] == null ? null : ScheduledQueryRulesAlertTriggerMetricTrigger.fromMap((map['metricTrigger'] as Map).cast<String, dynamic>()),
      operator: map['operator'] as String,
      threshold: map['threshold'] as double,
    );
  }
}

