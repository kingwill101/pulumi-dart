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
  const AlertConditionState({
    this.enabled,
    this.entityGuid,
    this.monitorId,
    this.name,
    this.policyId,
    this.runbookUrl,
  });

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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entityGuid: (() { final guardedValue = map['entityGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorId: (() { final guardedValue = map['monitorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookUrl: (() { final guardedValue = map['runbookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

