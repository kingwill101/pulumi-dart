// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_location_alert_condition_critical.dart';
import 'multi_location_alert_condition_warning.dart';

/// Input properties used for looking up and filtering MultiLocationAlertCondition resources.
class MultiLocationAlertConditionState {
  /// A condition term with the priority set to critical.
  final pulumi.Input<MultiLocationAlertConditionCritical>? critical;
  /// Set whether to enable the alert condition.  Defaults to true.
  final pulumi.Input<bool>? enabled;
  /// The Monitor GUID's of the Synthetics monitors to alert on.
  final pulumi.Input<List<String>>? entities;
  /// The unique entity identifier of the condition in New Relic.
  final pulumi.Input<String>? entityGuid;
  /// The title of the condition.
  final pulumi.Input<String>? name;
  /// The ID of the policy where this condition will be used.
  final pulumi.Input<String>? policyId;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// The maximum number of seconds a violation can remain open before being closed by the system. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days), both inclusive. Defaults to 259200 seconds (3 days) if this argument is not specified in the configuration, in accordance with the characteristics of this field in NerdGraph, as specified in the [docs](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/advanced-alerts/rest-api-alerts/alerts-conditions-api-field-names/#violation_time_limit_seconds).
  final pulumi.Input<int>? violationTimeLimitSeconds;
  /// A condition term with the priority set to warning.
  ///
  ///
  /// &gt; **WARNING:** This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  final pulumi.Input<MultiLocationAlertConditionWarning>? warning;

  /// Creates a new [MultiLocationAlertConditionState].
  /// [critical] A condition term with the priority set to critical.
  /// [enabled] Set whether to enable the alert condition.  Defaults to true.
  /// [entities] The Monitor GUID's of the Synthetics monitors to alert on.
  /// [entityGuid] The unique entity identifier of the condition in New Relic.
  /// [name] The title of the condition.
  /// [policyId] The ID of the policy where this condition will be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [violationTimeLimitSeconds] The maximum number of seconds a violation can remain open before being closed by the system. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days), both inclusive. Defaults to 259200 seconds (3 days) if this argument is not specified in the configuration, in accordance with the characteristics of this field in NerdGraph, as specified in the [docs](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/advanced-alerts/rest-api-alerts/alerts-conditions-api-field-names/#violation_time_limit_seconds).
  /// [warning] A condition term with the priority set to warning.
  MultiLocationAlertConditionState({
    this.critical,
    this.enabled,
    this.entities,
    this.entityGuid,
    this.name,
    this.policyId,
    this.runbookUrl,
    this.violationTimeLimitSeconds,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?pulumi.Input.mapOptionalInputValue<MultiLocationAlertConditionCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'enabled': ?enabled,
      'entities': ?entities,
      'entityGuid': ?entityGuid,
      'name': ?name,
      'policyId': ?policyId,
      'runbookUrl': ?runbookUrl,
      'violationTimeLimitSeconds': ?violationTimeLimitSeconds,
      'warning': ?pulumi.Input.mapOptionalInputValue<MultiLocationAlertConditionWarning, Map<String, dynamic>>(warning, (value) => value.toMap()),
    };
  }

  factory MultiLocationAlertConditionState.fromMap(Map<String, dynamic> map) {
    return MultiLocationAlertConditionState(
      critical: (() { final guardedValue = map['critical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiLocationAlertConditionCritical.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entityGuid: (() { final guardedValue = map['entityGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookUrl: (() { final guardedValue = map['runbookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      violationTimeLimitSeconds: (() { final guardedValue = map['violationTimeLimitSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warning: (() { final guardedValue = map['warning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiLocationAlertConditionWarning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

