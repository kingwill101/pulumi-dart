// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_alert_condition_alert_condition_args_doc}
/// The set of arguments for AlertCondition.
/// {@endtemplate}
/// {@macro pulumi_synthetics_alert_condition_alert_condition_args_doc}
class AlertConditionArgs {
  /// Set whether to enable the alert condition. Defaults to `true`.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  final pulumi.Input<bool>? enabled;

  /// The GUID of the Synthetics monitor to be referenced in the alert condition.
  final pulumi.Input<String> monitorId;

  /// The title of this condition.
  final pulumi.Input<String>? name;

  /// The ID of the policy where this condition should be used.
  final pulumi.Input<String> policyId;

  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;

  /// Creates a new [AlertConditionArgs].
  /// [enabled] Set whether to enable the alert condition. Defaults to `true`.
  /// [monitorId] The GUID of the Synthetics monitor to be referenced in the alert condition.
  /// [name] The title of this condition.
  /// [policyId] The ID of the policy where this condition should be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  AlertConditionArgs({
    this.enabled,
    required this.monitorId,
    this.name,
    required this.policyId,
    this.runbookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'monitorId': monitorId,
      'name': ?name,
      'policyId': policyId,
      'runbookUrl': ?runbookUrl,
    };
  }

  factory AlertConditionArgs.fromMap(Map<String, dynamic> map) {
    return AlertConditionArgs(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      monitorId: pulumi.Input.fromValue(map['monitorId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      runbookUrl: (() {
        final guardedValue = map['runbookUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
