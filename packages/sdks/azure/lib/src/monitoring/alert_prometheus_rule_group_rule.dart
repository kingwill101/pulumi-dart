// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_prometheus_rule_group_rule_action.dart';
import 'alert_prometheus_rule_group_rule_alert_resolution.dart';

class AlertPrometheusRuleGroupRule {
  /// An `action` block as defined below.
  final pulumi.Input<List<AlertPrometheusRuleGroupRuleAction>>? actions;
  /// Specifies the Alert rule name.
  final pulumi.Input<String>? alert;
  /// An `alert_resolution` block as defined below.
  final pulumi.Input<AlertPrometheusRuleGroupRuleAlertResolution>? alertResolution;
  /// Specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Is this rule enabled? Possible values are `true` and `false`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the Prometheus Query Language expression to evaluate. For more details see [this doc](https://prometheus.io/docs/prometheus/latest/querying/basics). Evaluate at the period given by `interval` and record the result as a new set of time series with the metric name given by `record`.
  final pulumi.Input<String> expression;
  /// Specifies the amount of time alert must be active before firing, represented in ISO 8601 duration format.
  final pulumi.Input<String>? for_;
  /// Specifies the labels to add or overwrite before storing the result.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies the recorded metrics name.
  final pulumi.Input<String>? record;
  /// Specifies the severity of the alerts fired by the rule. Possible values are between 0 and 4.
  final pulumi.Input<int>? severity;

  /// Creates a new [AlertPrometheusRuleGroupRule].
  /// [actions] An `action` block as defined below.
  /// [alert] Specifies the Alert rule name.
  /// [alertResolution] An `alert_resolution` block as defined below.
  /// [annotations] Specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links.
  /// [enabled] Is this rule enabled? Possible values are `true` and `false`.
  /// [expression] Specifies the Prometheus Query Language expression to evaluate. For more details see [this doc](https://prometheus.io/docs/prometheus/latest/querying/basics). Evaluate at the period given by `interval` and record the result as a new set of time series with the metric name given by `record`.
  /// [for_] Specifies the amount of time alert must be active before firing, represented in ISO 8601 duration format.
  /// [labels] Specifies the labels to add or overwrite before storing the result.
  /// [record] Specifies the recorded metrics name.
  /// [severity] Specifies the severity of the alerts fired by the rule. Possible values are between 0 and 4.
  AlertPrometheusRuleGroupRule({
    this.actions,
    this.alert,
    this.alertResolution,
    this.annotations,
    this.enabled,
    required this.expression,
    this.for_,
    this.labels,
    this.record,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AlertPrometheusRuleGroupRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AlertPrometheusRuleGroupRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alert': ?alert,
      'alertResolution': ?pulumi.Input.mapOptionalInputValue<AlertPrometheusRuleGroupRuleAlertResolution, Map<String, dynamic>>(alertResolution, (value) => value.toMap()),
      'annotations': ?annotations,
      'enabled': ?enabled,
      'expression': expression,
      'for': ?for_,
      'labels': ?labels,
      'record': ?record,
      'severity': ?severity,
    };
  }

  factory AlertPrometheusRuleGroupRule.fromMap(Map<String, dynamic> map) {
    return AlertPrometheusRuleGroupRule(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<AlertPrometheusRuleGroupRuleAction>(map['actions']!, (value) => AlertPrometheusRuleGroupRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      alert: map['alert'] == null ? null : (map['alert']! as String).input(),
      alertResolution: map['alertResolution'] == null ? null : (AlertPrometheusRuleGroupRuleAlertResolution.fromMap((map['alertResolution']! as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      expression: (map['expression'] as String).input(),
      for_: map['for'] == null ? null : (map['for']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      record: map['record'] == null ? null : (map['record']! as String).input(),
      severity: map['severity'] == null ? null : (map['severity']! as int).input(),
    );
  }
}

