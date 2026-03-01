// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_location_alert_condition_critical.dart';
import 'multi_location_alert_condition_warning.dart';

/// {@template pulumi_synthetics_multi_location_alert_condition_multi_location_alert_condition_args_doc}
/// The set of arguments for MultiLocationAlertCondition.
/// {@endtemplate}
/// {@macro pulumi_synthetics_multi_location_alert_condition_multi_location_alert_condition_args_doc}
class MultiLocationAlertConditionArgs {
  /// A condition term with the priority set to critical.
  final pulumi.Input<MultiLocationAlertConditionCritical> critical;
  /// Set whether to enable the alert condition.  Defaults to true.
  final pulumi.Input<bool>? enabled;
  /// The Monitor GUID's of the Synthetics monitors to alert on.
  final pulumi.Input<List<String>> entities;
  /// The title of the condition.
  final pulumi.Input<String>? name;
  /// The ID of the policy where this condition will be used.
  final pulumi.Input<String> policyId;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// The maximum number of seconds a violation can remain open before being closed by the system. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days), both inclusive. Defaults to 259200 seconds (3 days) if this argument is not specified in the configuration, in accordance with the characteristics of this field in NerdGraph, as specified in the [docs](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/advanced-alerts/rest-api-alerts/alerts-conditions-api-field-names/#violation_time_limit_seconds).
  final pulumi.Input<int>? violationTimeLimitSeconds;
  /// A condition term with the priority set to warning.
  ///
  ///
  /// > **WARNING:** This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  final pulumi.Input<MultiLocationAlertConditionWarning>? warning;

  /// Creates a new [MultiLocationAlertConditionArgs].
  /// [critical] A condition term with the priority set to critical.
  /// [enabled] Set whether to enable the alert condition.  Defaults to true.
  /// [entities] The Monitor GUID's of the Synthetics monitors to alert on.
  /// [name] The title of the condition.
  /// [policyId] The ID of the policy where this condition will be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [violationTimeLimitSeconds] The maximum number of seconds a violation can remain open before being closed by the system. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days), both inclusive. Defaults to 259200 seconds (3 days) if this argument is not specified in the configuration, in accordance with the characteristics of this field in NerdGraph, as specified in the [docs](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/advanced-alerts/rest-api-alerts/alerts-conditions-api-field-names/#violation_time_limit_seconds).
  /// [warning] A condition term with the priority set to warning.
  MultiLocationAlertConditionArgs({
    required pulumi.Output<MultiLocationAlertConditionCritical> critical,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<List<String>> entities,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? runbookUrl,
    pulumi.Output<int>? violationTimeLimitSeconds,
    pulumi.Output<MultiLocationAlertConditionWarning>? warning,
  }) :
      critical = pulumi.Input.asInput<MultiLocationAlertConditionCritical>(critical),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entities = pulumi.Input.asInput<List<String>>(entities),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asInput<String>(policyId),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl),
      violationTimeLimitSeconds = pulumi.Input.asOptionalInput<int>(violationTimeLimitSeconds),
      warning = pulumi.Input.asOptionalInput<MultiLocationAlertConditionWarning>(warning);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': pulumi.Input.mapInputValue<MultiLocationAlertConditionCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'enabled': ?enabled,
      'entities': entities,
      'name': ?name,
      'policyId': policyId,
      'runbookUrl': ?runbookUrl,
      'violationTimeLimitSeconds': ?violationTimeLimitSeconds,
      'warning': ?pulumi.Input.mapOptionalInputValue<MultiLocationAlertConditionWarning, Map<String, dynamic>>(warning, (value) => value.toMap()),
    };
  }

  factory MultiLocationAlertConditionArgs.fromMap(Map<String, dynamic> map) {
    return MultiLocationAlertConditionArgs(
      critical: pulumi.Output.create<MultiLocationAlertConditionCritical>(MultiLocationAlertConditionCritical.fromMap((map['critical'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entities: pulumi.Output.create<List<String>>((map['entities'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
      violationTimeLimitSeconds: map['violationTimeLimitSeconds'] == null ? null : pulumi.Output.create<int>(map['violationTimeLimitSeconds'] as int),
      warning: map['warning'] == null ? null : pulumi.Output.create<MultiLocationAlertConditionWarning>(MultiLocationAlertConditionWarning.fromMap((map['warning'] as Map).cast<String, dynamic>())),
    );
  }
}

