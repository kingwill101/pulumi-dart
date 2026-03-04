// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_trigger_metric_trigger.dart';

class ScheduledQueryRulesAlertTrigger {
  /// A `metric_trigger` block as defined above. Trigger condition for metric query rule.
  final pulumi.Input<ScheduledQueryRulesAlertTriggerMetricTrigger>?
  metricTrigger;

  /// Evaluation operation for rule - 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
  final pulumi.Input<String> operator;

  /// Result or count threshold based on which rule should be triggered. Values must be between 0 and 10000 inclusive.
  final pulumi.Input<double> threshold;

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
      'metricTrigger':
          ?pulumi.Input.mapOptionalInputValue<
            ScheduledQueryRulesAlertTriggerMetricTrigger,
            Map<String, dynamic>
          >(metricTrigger, (value) => value.toMap()),
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory ScheduledQueryRulesAlertTrigger.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertTrigger(
      metricTrigger: (() {
        final guardedValue = map['metricTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScheduledQueryRulesAlertTriggerMetricTrigger.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}
