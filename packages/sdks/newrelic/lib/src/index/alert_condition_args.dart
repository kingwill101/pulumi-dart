// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_condition_term.dart';

/// {@template pulumi_index_alert_condition_alert_condition_args_doc}
/// The set of arguments for AlertCondition.
/// {@endtemplate}
/// {@macro pulumi_index_alert_condition_alert_condition_args_doc}
class AlertConditionArgs {
  /// `application` or `instance`.  Choose `application` for most scenarios.  If you are using the JVM plugin in New Relic, the `instance` setting allows your condition to trigger [for specific app instances](https://docs.newrelic.com/docs/alerts/new-relic-alerts/defining-conditions/scope-alert-thresholds-specific-instances).
  final pulumi.Input<String>? conditionScope;
  /// Whether the condition is enabled or not. Defaults to true.
  final pulumi.Input<bool>? enabled;
  /// The instance IDs associated with this condition.
  final pulumi.Input<List<String>> entities;
  /// A valid Garbage Collection metric e.g. `GC/G1 Young Generation`.
  final pulumi.Input<String>? gcMetric;
  /// The metric field accepts parameters based on the `type` set. One of these metrics based on `type`:
  final pulumi.Input<String> metric;
  /// The title of the condition. Must be between 1 and 64 characters, inclusive.
  final pulumi.Input<String>? name;
  /// The ID of the policy where this condition should be used.
  final pulumi.Input<String> policyId;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// A list of terms for this condition. See Terms below for details.
  final pulumi.Input<List<AlertConditionTerm>> terms;
  /// The type of condition. One of: `apm_app_metric`, `apm_jvm_metric`, `apm_kt_metric`, `browser_metric`, `mobile_metric`
  final pulumi.Input<String> type;
  /// A custom metric to be evaluated.
  final pulumi.Input<String>? userDefinedMetric;
  /// One of: `average`, `min`, `max`, `total`, `sample_size`, `rate` or `percent`.
  ///
  /// > **NOTE:** The `user_defined_value_function` can have `rate` or `percent` only when the `type` is `mobile_metric`.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  final pulumi.Input<String>? userDefinedValueFunction;
  /// Automatically close instance-based incidents, including JVM health metric incidents, after the number of hours specified. Must be between 1 and 720 hours. Must be specified in the following two cases, to prevent drift:
  /// * when `type` = `apm_app_metric` and `condition_scope` = `instance`
  /// * when `type` = `apm_jvm_metric`
  final pulumi.Input<int>? violationCloseTimer;

  /// Creates a new [AlertConditionArgs].
  /// [conditionScope] `application` or `instance`.  Choose `application` for most scenarios.  If you are using the JVM plugin in New Relic, the `instance` setting allows your condition to trigger [for specific app instances](https://docs.newrelic.com/docs/alerts/new-relic-alerts/defining-conditions/scope-alert-thresholds-specific-instances).
  /// [enabled] Whether the condition is enabled or not. Defaults to true.
  /// [entities] The instance IDs associated with this condition.
  /// [gcMetric] A valid Garbage Collection metric e.g. `GC/G1 Young Generation`.
  /// [metric] The metric field accepts parameters based on the `type` set. One of these metrics based on `type`:
  /// [name] The title of the condition. Must be between 1 and 64 characters, inclusive.
  /// [policyId] The ID of the policy where this condition should be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [terms] A list of terms for this condition. See Terms below for details.
  /// [type] The type of condition. One of: `apm_app_metric`, `apm_jvm_metric`, `apm_kt_metric`, `browser_metric`, `mobile_metric`
  /// [userDefinedMetric] A custom metric to be evaluated.
  /// [userDefinedValueFunction] One of: `average`, `min`, `max`, `total`, `sample_size`, `rate` or `percent`.
  /// [violationCloseTimer] Automatically close instance-based incidents, including JVM health metric incidents, after the number of hours specified. Must be between 1 and 720 hours. Must be specified in the following two cases, to prevent drift:
  AlertConditionArgs({
    pulumi.Output<String>? conditionScope,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<List<String>> entities,
    pulumi.Output<String>? gcMetric,
    required pulumi.Output<String> metric,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? runbookUrl,
    required pulumi.Output<List<AlertConditionTerm>> terms,
    required pulumi.Output<String> type,
    pulumi.Output<String>? userDefinedMetric,
    pulumi.Output<String>? userDefinedValueFunction,
    pulumi.Output<int>? violationCloseTimer,
  }) :
      conditionScope = pulumi.Input.asOptionalInput<String>(conditionScope),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entities = pulumi.Input.asInput<List<String>>(entities),
      gcMetric = pulumi.Input.asOptionalInput<String>(gcMetric),
      metric = pulumi.Input.asInput<String>(metric),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asInput<String>(policyId),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl),
      terms = pulumi.Input.asInput<List<AlertConditionTerm>>(terms),
      type = pulumi.Input.asInput<String>(type),
      userDefinedMetric = pulumi.Input.asOptionalInput<String>(userDefinedMetric),
      userDefinedValueFunction = pulumi.Input.asOptionalInput<String>(userDefinedValueFunction),
      violationCloseTimer = pulumi.Input.asOptionalInput<int>(violationCloseTimer);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionScope': ?conditionScope,
      'enabled': ?enabled,
      'entities': entities,
      'gcMetric': ?gcMetric,
      'metric': metric,
      'name': ?name,
      'policyId': policyId,
      'runbookUrl': ?runbookUrl,
      'terms': pulumi.Input.mapInputValue<List<AlertConditionTerm>, List<Map<String, dynamic>>>(terms, (value) => pulumi.Input.encodeList<AlertConditionTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'userDefinedMetric': ?userDefinedMetric,
      'userDefinedValueFunction': ?userDefinedValueFunction,
      'violationCloseTimer': ?violationCloseTimer,
    };
  }

  factory AlertConditionArgs.fromMap(Map<String, dynamic> map) {
    return AlertConditionArgs(
      conditionScope: map['conditionScope'] == null ? null : pulumi.Output.create<String>(map['conditionScope'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entities: pulumi.Output.create<List<String>>((map['entities'] as List).cast<String>()),
      gcMetric: map['gcMetric'] == null ? null : pulumi.Output.create<String>(map['gcMetric'] as String),
      metric: pulumi.Output.create<String>(map['metric'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
      terms: pulumi.Output.create<List<AlertConditionTerm>>(pulumi.Input.decodeList<AlertConditionTerm>(map['terms'], (value) => AlertConditionTerm.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Output.create<String>(map['type'] as String),
      userDefinedMetric: map['userDefinedMetric'] == null ? null : pulumi.Output.create<String>(map['userDefinedMetric'] as String),
      userDefinedValueFunction: map['userDefinedValueFunction'] == null ? null : pulumi.Output.create<String>(map['userDefinedValueFunction'] as String),
      violationCloseTimer: map['violationCloseTimer'] == null ? null : pulumi.Output.create<int>(map['violationCloseTimer'] as int),
    );
  }
}

