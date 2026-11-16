// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_policy_actions.dart';

/// Input properties used for looking up and filtering ZeroTrustCasbPolicy resources.
class ZeroTrustCasbPolicyState {
  final pulumi.Input<String?>? accountId;
  /// Actions to execute when this policy is triggered, grouped by action type.
  /// A policy must contain at least one action across all groups and may include
  /// at most one remediation.
  final pulumi.Input<ZeroTrustCasbPolicyActions?>? actions;
  /// When true, the policy applies to all integrations for the account. When false, integrationIds must be provided.
  final pulumi.Input<bool?>? appliesToAllIntegrations;
  /// Timestamp when the policy was created.
  final pulumi.Input<String?>? createdAt;
  /// Optional description of what this policy does.
  final pulumi.Input<String?>? description;
  /// Timestamp when the policy was disabled. Omitted from the response when the policy
  /// is enabled.
  final pulumi.Input<String?>? disabledAt;
  /// Display name for the policy configuration.
  final pulumi.Input<String?>? displayName;
  /// Boolean specifying if the policy is enabled or disabled.
  final pulumi.Input<bool?>? enabled;
  /// The finding type this policy is associated with. All remediation actions must match this finding type.
  final pulumi.Input<String?>? findingTypeId;
  /// The integrations this policy applies to. Required when applies*to*all_integrations is false.
  final pulumi.Input<List<String>?>? integrationIds;
  /// Timestamp of the most recent successful policy invocation. Omitted
  /// from the response when the policy has never been successfully
  /// triggered. Only populated on GET responses; absent on responses from
  /// create/update endpoints.
  final pulumi.Input<String?>? lastTriggeredAt;
  /// Timestamp when the policy was last updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCasbPolicyState].
  /// [accountId] Optional.
  /// [actions] Actions to execute when this policy is triggered, grouped by action type.
  /// [appliesToAllIntegrations] When true, the policy applies to all integrations for the account. When false, integrationIds must be provided.
  /// [createdAt] Timestamp when the policy was created.
  /// [description] Optional description of what this policy does.
  /// [disabledAt] Timestamp when the policy was disabled. Omitted from the response when the policy
  /// [displayName] Display name for the policy configuration.
  /// [enabled] Boolean specifying if the policy is enabled or disabled.
  /// [findingTypeId] The finding type this policy is associated with. All remediation actions must match this finding type.
  /// [integrationIds] The integrations this policy applies to. Required when applies*to*all_integrations is false.
  /// [lastTriggeredAt] Timestamp of the most recent successful policy invocation. Omitted
  /// [updatedAt] Timestamp when the policy was last updated.
  const ZeroTrustCasbPolicyState({
    this.accountId,
    this.actions,
    this.appliesToAllIntegrations,
    this.createdAt,
    this.description,
    this.disabledAt,
    this.displayName,
    this.enabled,
    this.findingTypeId,
    this.integrationIds,
    this.lastTriggeredAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actions': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbPolicyActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'appliesToAllIntegrations': ?appliesToAllIntegrations,
      'createdAt': ?createdAt,
      'description': ?description,
      'disabledAt': ?disabledAt,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'findingTypeId': ?findingTypeId,
      'integrationIds': ?integrationIds,
      'lastTriggeredAt': ?lastTriggeredAt,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCasbPolicyState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbPolicyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbPolicyActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appliesToAllIntegrations: (() { final guardedValue = map['appliesToAllIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabledAt: (() { final guardedValue = map['disabledAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      findingTypeId: (() { final guardedValue = map['findingTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationIds: (() { final guardedValue = map['integrationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastTriggeredAt: (() { final guardedValue = map['lastTriggeredAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
