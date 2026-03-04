// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_match.dart';
import 'metric_absence.dart';
import 'metric_threshold.dart';
import 'monitoring_query_language_condition.dart';
import 'prometheus_query_language_condition.dart';

/// A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.
class Condition {
  /// A condition that checks that a time series continues to receive new data points.
  final pulumi.Input<MetricAbsence>? conditionAbsent;

  /// A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  final pulumi.Input<LogMatch>? conditionMatchedLog;

  /// A condition that uses the Monitoring Query Language to define alerts.
  final pulumi.Input<MonitoringQueryLanguageCondition>?
  conditionMonitoringQueryLanguage;

  /// A condition that uses the Prometheus query language to define alerts.
  final pulumi.Input<PrometheusQueryLanguageCondition>?
  conditionPrometheusQueryLanguage;

  /// A condition that compares a time series against a threshold.
  final pulumi.Input<MetricThreshold>? conditionThreshold;

  /// A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  final pulumi.Input<String>? displayName;

  /// Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  final pulumi.Input<String>? name;

  /// Creates a new [Condition].
  /// [conditionAbsent] A condition that checks that a time series continues to receive new data points.
  /// [conditionMatchedLog] A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  /// [conditionMonitoringQueryLanguage] A condition that uses the Monitoring Query Language to define alerts.
  /// [conditionPrometheusQueryLanguage] A condition that uses the Prometheus query language to define alerts.
  /// [conditionThreshold] A condition that compares a time series against a threshold.
  /// [displayName] A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  /// [name] Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  Condition({
    this.conditionAbsent,
    this.conditionMatchedLog,
    this.conditionMonitoringQueryLanguage,
    this.conditionPrometheusQueryLanguage,
    this.conditionThreshold,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionAbsent':
          ?pulumi.Input.mapOptionalInputValue<
            MetricAbsence,
            Map<String, dynamic>
          >(conditionAbsent, (value) => value.toMap()),
      'conditionMatchedLog':
          ?pulumi.Input.mapOptionalInputValue<LogMatch, Map<String, dynamic>>(
            conditionMatchedLog,
            (value) => value.toMap(),
          ),
      'conditionMonitoringQueryLanguage':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringQueryLanguageCondition,
            Map<String, dynamic>
          >(conditionMonitoringQueryLanguage, (value) => value.toMap()),
      'conditionPrometheusQueryLanguage':
          ?pulumi.Input.mapOptionalInputValue<
            PrometheusQueryLanguageCondition,
            Map<String, dynamic>
          >(conditionPrometheusQueryLanguage, (value) => value.toMap()),
      'conditionThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            MetricThreshold,
            Map<String, dynamic>
          >(conditionThreshold, (value) => value.toMap()),
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      conditionAbsent: (() {
        final guardedValue = map['conditionAbsent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricAbsence.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      conditionMatchedLog: (() {
        final guardedValue = map['conditionMatchedLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogMatch.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      conditionMonitoringQueryLanguage: (() {
        final guardedValue = map['conditionMonitoringQueryLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringQueryLanguageCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      conditionPrometheusQueryLanguage: (() {
        final guardedValue = map['conditionPrometheusQueryLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrometheusQueryLanguageCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      conditionThreshold: (() {
        final guardedValue = map['conditionThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricThreshold.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
