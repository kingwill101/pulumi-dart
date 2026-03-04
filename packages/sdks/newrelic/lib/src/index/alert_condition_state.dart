// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_condition_term.dart';

/// Input properties used for looking up and filtering AlertCondition resources.
class AlertConditionState {
  /// `application` or `instance`.  Choose `application` for most scenarios.  If you are using the JVM plugin in New Relic, the `instance` setting allows your condition to trigger [for specific app instances](https://docs.newrelic.com/docs/alerts/new-relic-alerts/defining-conditions/scope-alert-thresholds-specific-instances).
  final pulumi.Input<String>? conditionScope;

  /// Whether the condition is enabled or not. Defaults to true.
  final pulumi.Input<bool>? enabled;

  /// The instance IDs associated with this condition.
  final pulumi.Input<List<String>>? entities;

  /// The unique entity identifier of the condition in New Relic.
  final pulumi.Input<String>? entityGuid;

  /// A valid Garbage Collection metric e.g. `GC/G1 Young Generation`.
  final pulumi.Input<String>? gcMetric;

  /// The metric field accepts parameters based on the `type` set. One of these metrics based on `type`:
  final pulumi.Input<String>? metric;

  /// The title of the condition. Must be between 1 and 64 characters, inclusive.
  final pulumi.Input<String>? name;

  /// The ID of the policy where this condition should be used.
  final pulumi.Input<String>? policyId;

  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;

  /// A list of terms for this condition. See Terms below for details.
  final pulumi.Input<List<AlertConditionTerm>>? terms;

  /// The type of condition. One of: `apm_app_metric`, `apm_jvm_metric`, `apm_kt_metric`, `browser_metric`, `mobile_metric`
  final pulumi.Input<String>? type;

  /// A custom metric to be evaluated.
  final pulumi.Input<String>? userDefinedMetric;

  /// One of: `average`, `min`, `max`, `total`, `sample_size`, `rate` or `percent`.
  ///
  /// &gt; **NOTE:** The `user_defined_value_function` can have `rate` or `percent` only when the `type` is `mobile_metric`.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  final pulumi.Input<String>? userDefinedValueFunction;

  /// Automatically close instance-based incidents, including JVM health metric incidents, after the number of hours specified. Must be between 1 and 720 hours. Must be specified in the following two cases, to prevent drift:
  /// * when `type` = `apm_app_metric` and `condition_scope` = `instance`
  /// * when `type` = `apm_jvm_metric`
  final pulumi.Input<int>? violationCloseTimer;

  /// Creates a new [AlertConditionState].
  /// [conditionScope] `application` or `instance`.  Choose `application` for most scenarios.  If you are using the JVM plugin in New Relic, the `instance` setting allows your condition to trigger [for specific app instances](https://docs.newrelic.com/docs/alerts/new-relic-alerts/defining-conditions/scope-alert-thresholds-specific-instances).
  /// [enabled] Whether the condition is enabled or not. Defaults to true.
  /// [entities] The instance IDs associated with this condition.
  /// [entityGuid] The unique entity identifier of the condition in New Relic.
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
  AlertConditionState({
    this.conditionScope,
    this.enabled,
    this.entities,
    this.entityGuid,
    this.gcMetric,
    this.metric,
    this.name,
    this.policyId,
    this.runbookUrl,
    this.terms,
    this.type,
    this.userDefinedMetric,
    this.userDefinedValueFunction,
    this.violationCloseTimer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionScope': ?conditionScope,
      'enabled': ?enabled,
      'entities': ?entities,
      'entityGuid': ?entityGuid,
      'gcMetric': ?gcMetric,
      'metric': ?metric,
      'name': ?name,
      'policyId': ?policyId,
      'runbookUrl': ?runbookUrl,
      'terms':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlertConditionTerm>,
            List<Map<String, dynamic>>
          >(
            terms,
            (value) =>
                pulumi.Input.encodeList<
                  AlertConditionTerm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': ?type,
      'userDefinedMetric': ?userDefinedMetric,
      'userDefinedValueFunction': ?userDefinedValueFunction,
      'violationCloseTimer': ?violationCloseTimer,
    };
  }

  factory AlertConditionState.fromMap(Map<String, dynamic> map) {
    return AlertConditionState(
      conditionScope: (() {
        final guardedValue = map['conditionScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      entities: (() {
        final guardedValue = map['entities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      entityGuid: (() {
        final guardedValue = map['entityGuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gcMetric: (() {
        final guardedValue = map['gcMetric'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metric: (() {
        final guardedValue = map['metric'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runbookUrl: (() {
        final guardedValue = map['runbookUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      terms: (() {
        final guardedValue = map['terms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlertConditionTerm>(
            guardedValue,
            (value) => AlertConditionTerm.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userDefinedMetric: (() {
        final guardedValue = map['userDefinedMetric'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userDefinedValueFunction: (() {
        final guardedValue = map['userDefinedValueFunction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      violationCloseTimer: (() {
        final guardedValue = map['violationCloseTimer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
