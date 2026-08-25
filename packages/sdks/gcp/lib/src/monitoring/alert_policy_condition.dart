// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_condition_condition_absent.dart';
import 'alert_policy_condition_condition_matched_log.dart';
import 'alert_policy_condition_condition_monitoring_query_language.dart';
import 'alert_policy_condition_condition_prometheus_query_language.dart';
import 'alert_policy_condition_condition_sql.dart';
import 'alert_policy_condition_condition_threshold.dart';

class AlertPolicyCondition {
  /// A condition that checks that a time series
  /// continues to receive new data points.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionAbsent?>? conditionAbsent;
  /// A condition that checks for log messages matching given constraints.
  /// If set, no other conditions can be present.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionMatchedLog?>? conditionMatchedLog;
  /// A Monitoring Query Language query that outputs a boolean stream
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionMonitoringQueryLanguage?>? conditionMonitoringQueryLanguage;
  /// A condition type that allows alert policies to be defined using
  /// Prometheus Query Language (PromQL).
  /// The PrometheusQueryLanguageCondition message contains information
  /// from a Prometheus alerting rule and its associated rule group.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionPrometheusQueryLanguage?>? conditionPrometheusQueryLanguage;
  /// A condition that allows alerting policies to be defined using GoogleSQL.
  /// SQL conditions examine a sliding window of logs using GoogleSQL.
  /// Alert policies with SQL conditions may incur additional billing.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSql?>? conditionSql;
  /// A condition that compares a time series against a
  /// threshold.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionThreshold?>? conditionThreshold;
  /// A short name or phrase used to identify the
  /// condition in dashboards, notifications, and
  /// incidents. To avoid confusion, don't use the same
  /// display name for multiple conditions in the same
  /// policy.
  final pulumi.Input<String> displayName;
  /// (Output)
  /// The unique resource name for this condition.
  /// Its syntax is:
  /// projects/[PROJECT_ID]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID]
  /// [CONDITION_ID] is assigned by Stackdriver Monitoring when
  /// the condition is created as part of a new or updated alerting
  /// policy.
  final pulumi.Input<String?>? name;

  /// Creates a new [AlertPolicyCondition].
  /// [conditionAbsent] A condition that checks that a time series
  /// [conditionMatchedLog] A condition that checks for log messages matching given constraints.
  /// [conditionMonitoringQueryLanguage] A Monitoring Query Language query that outputs a boolean stream
  /// [conditionPrometheusQueryLanguage] A condition type that allows alert policies to be defined using
  /// [conditionSql] A condition that allows alerting policies to be defined using GoogleSQL.
  /// [conditionThreshold] A condition that compares a time series against a
  /// [displayName] A short name or phrase used to identify the
  /// [name] (Output)
  const AlertPolicyCondition({
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionSql,
    this.conditionThreshold,
    required this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionAbsent': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionAbsent, Map<String, dynamic>>(conditionAbsent, (value) => value.toMap()),
      'conditionMatchedLog': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionMatchedLog, Map<String, dynamic>>(conditionMatchedLog, (value) => value.toMap()),
      'conditionMonitoringQueryLanguage': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionMonitoringQueryLanguage, Map<String, dynamic>>(conditionMonitoringQueryLanguage, (value) => value.toMap()),
      'conditionPrometheusQueryLanguage': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionPrometheusQueryLanguage, Map<String, dynamic>>(conditionPrometheusQueryLanguage, (value) => value.toMap()),
      'conditionSql': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionSql, Map<String, dynamic>>(conditionSql, (value) => value.toMap()),
      'conditionThreshold': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionThreshold, Map<String, dynamic>>(conditionThreshold, (value) => value.toMap()),
      'displayName': displayName,
      'name': ?name,
    };
  }

  factory AlertPolicyCondition.fromMap(Map<String, dynamic> map) {
    return AlertPolicyCondition(
      conditionAbsent: (() { final guardedValue = map['conditionAbsent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionAbsent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionMatchedLog: (() { final guardedValue = map['conditionMatchedLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionMatchedLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionMonitoringQueryLanguage: (() { final guardedValue = map['conditionMonitoringQueryLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionMonitoringQueryLanguage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionPrometheusQueryLanguage: (() { final guardedValue = map['conditionPrometheusQueryLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionPrometheusQueryLanguage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionSql: (() { final guardedValue = map['conditionSql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionSql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionThreshold: (() { final guardedValue = map['conditionThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyConditionConditionThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
