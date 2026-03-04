// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_match_response.dart';
import 'metric_absence_response.dart';
import 'metric_threshold_response.dart';
import 'monitoring_query_language_condition_response.dart';
import 'prometheus_query_language_condition_response.dart';

/// A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.
class ConditionResponse {
  /// A condition that checks that a time series continues to receive new data points.
  final pulumi.Input<MetricAbsenceResponse> conditionAbsent;

  /// A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  final pulumi.Input<LogMatchResponse> conditionMatchedLog;

  /// A condition that uses the Monitoring Query Language to define alerts.
  final pulumi.Input<MonitoringQueryLanguageConditionResponse>
  conditionMonitoringQueryLanguage;

  /// A condition that uses the Prometheus query language to define alerts.
  final pulumi.Input<PrometheusQueryLanguageConditionResponse>
  conditionPrometheusQueryLanguage;

  /// A condition that compares a time series against a threshold.
  final pulumi.Input<MetricThresholdResponse> conditionThreshold;

  /// A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  final pulumi.Input<String> displayName;

  /// Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  final pulumi.Input<String> name;

  /// Creates a new [ConditionResponse].
  /// [conditionAbsent] A condition that checks that a time series continues to receive new data points.
  /// [conditionMatchedLog] A condition that checks for log messages matching given constraints. If set, no other conditions can be present.
  /// [conditionMonitoringQueryLanguage] A condition that uses the Monitoring Query Language to define alerts.
  /// [conditionPrometheusQueryLanguage] A condition that uses the Prometheus query language to define alerts.
  /// [conditionThreshold] A condition that compares a time series against a threshold.
  /// [displayName] A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  /// [name] Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  ConditionResponse({
    required this.conditionAbsent,
    required this.conditionMatchedLog,
    required this.conditionMonitoringQueryLanguage,
    required this.conditionPrometheusQueryLanguage,
    required this.conditionThreshold,
    required this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionAbsent':
          pulumi.Input.mapInputValue<
            MetricAbsenceResponse,
            Map<String, dynamic>
          >(conditionAbsent, (value) => value.toMap()),
      'conditionMatchedLog':
          pulumi.Input.mapInputValue<LogMatchResponse, Map<String, dynamic>>(
            conditionMatchedLog,
            (value) => value.toMap(),
          ),
      'conditionMonitoringQueryLanguage':
          pulumi.Input.mapInputValue<
            MonitoringQueryLanguageConditionResponse,
            Map<String, dynamic>
          >(conditionMonitoringQueryLanguage, (value) => value.toMap()),
      'conditionPrometheusQueryLanguage':
          pulumi.Input.mapInputValue<
            PrometheusQueryLanguageConditionResponse,
            Map<String, dynamic>
          >(conditionPrometheusQueryLanguage, (value) => value.toMap()),
      'conditionThreshold':
          pulumi.Input.mapInputValue<
            MetricThresholdResponse,
            Map<String, dynamic>
          >(conditionThreshold, (value) => value.toMap()),
      'displayName': displayName,
      'name': name,
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      conditionAbsent: pulumi.Input.fromValue(
        MetricAbsenceResponse.fromMap(
          (map['conditionAbsent']! as Map).cast<String, dynamic>(),
        ),
      ),
      conditionMatchedLog: pulumi.Input.fromValue(
        LogMatchResponse.fromMap(
          (map['conditionMatchedLog']! as Map).cast<String, dynamic>(),
        ),
      ),
      conditionMonitoringQueryLanguage: pulumi.Input.fromValue(
        MonitoringQueryLanguageConditionResponse.fromMap(
          (map['conditionMonitoringQueryLanguage']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      conditionPrometheusQueryLanguage: pulumi.Input.fromValue(
        PrometheusQueryLanguageConditionResponse.fromMap(
          (map['conditionPrometheusQueryLanguage']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      conditionThreshold: pulumi.Input.fromValue(
        MetricThresholdResponse.fromMap(
          (map['conditionThreshold']! as Map).cast<String, dynamic>(),
        ),
      ),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
