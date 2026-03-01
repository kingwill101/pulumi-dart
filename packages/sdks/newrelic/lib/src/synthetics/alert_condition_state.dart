// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertCondition resources.
class AlertConditionState {
  /// Set whether to enable the alert condition. Defaults to `true`.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  final pulumi.Input<bool>? enabled;
  /// The unique entity identifier of the condition in New Relic.
  final pulumi.Input<String>? entityGuid;
  /// The GUID of the Synthetics monitor to be referenced in the alert condition.
  final pulumi.Input<String>? monitorId;
  /// The title of this condition.
  final pulumi.Input<String>? name;
  /// The ID of the policy where this condition should be used.
  final pulumi.Input<String>? policyId;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;

  /// Creates a new [AlertConditionState].
  /// [enabled] Set whether to enable the alert condition. Defaults to `true`.
  /// [entityGuid] The unique entity identifier of the condition in New Relic.
  /// [monitorId] The GUID of the Synthetics monitor to be referenced in the alert condition.
  /// [name] The title of this condition.
  /// [policyId] The ID of the policy where this condition should be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  AlertConditionState({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? entityGuid,
    pulumi.Output<String>? monitorId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? runbookUrl,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entityGuid = pulumi.Input.asOptionalInput<String>(entityGuid),
      monitorId = pulumi.Input.asOptionalInput<String>(monitorId),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'entityGuid': ?entityGuid,
      'monitorId': ?monitorId,
      'name': ?name,
      'policyId': ?policyId,
      'runbookUrl': ?runbookUrl,
    };
  }

  factory AlertConditionState.fromMap(Map<String, dynamic> map) {
    return AlertConditionState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entityGuid: map['entityGuid'] == null ? null : pulumi.Output.create<String>(map['entityGuid'] as String),
      monitorId: map['monitorId'] == null ? null : pulumi.Output.create<String>(map['monitorId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
    );
  }
}

