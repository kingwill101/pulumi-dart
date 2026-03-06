// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_alert_trigger_metric_trigger.dart';

class GetScheduledQueryRulesAlertTrigger {
  final pulumi.Input<List<GetScheduledQueryRulesAlertTriggerMetricTrigger>> metricTriggers;
  /// Evaluation operation for rule.
  final pulumi.Input<String> operator;
  /// Result or count threshold based on which rule should be triggered.
  final pulumi.Input<double> threshold;

  /// Creates a new [GetScheduledQueryRulesAlertTrigger].
  /// [metricTriggers] Required.
  /// [operator] Evaluation operation for rule.
  /// [threshold] Result or count threshold based on which rule should be triggered.
  const GetScheduledQueryRulesAlertTrigger({
    required this.metricTriggers,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTriggers': pulumi.Input.mapInputValue<List<GetScheduledQueryRulesAlertTriggerMetricTrigger>, List<Map<String, dynamic>>>(metricTriggers, (value) => pulumi.Input.encodeList<GetScheduledQueryRulesAlertTriggerMetricTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory GetScheduledQueryRulesAlertTrigger.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertTrigger(
      metricTriggers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetScheduledQueryRulesAlertTriggerMetricTrigger>(map['metricTriggers']!, (value) => GetScheduledQueryRulesAlertTriggerMetricTrigger.fromMap((value as Map).cast<String, dynamic>()))),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}

