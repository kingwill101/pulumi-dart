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
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> monitorId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? runbookUrl,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      monitorId = pulumi.Input.asInput<String>(monitorId),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asInput<String>(policyId),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl);

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
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      monitorId: pulumi.Output.create<String>(map['monitorId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
    );
  }
}

