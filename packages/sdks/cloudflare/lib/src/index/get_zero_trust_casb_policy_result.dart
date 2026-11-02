// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_casb_policy_actions.dart';

/// Result data returned by getZeroTrustCasbPolicy.
class GetZeroTrustCasbPolicyResult {
  final String? accountId;
  /// The actions configured for this policy.
  final GetZeroTrustCasbPolicyActions? actions;
  /// When true, the policy applies to all integrations for the account. When false, it applies only to the specified integration_ids.
  final bool? appliesToAllIntegrations;
  /// Timestamp when the policy was created.
  final String? createdAt;
  /// User-set description of what this policy does. Limited to 1000 characters.
  final String? description;
  /// Timestamp when the policy was disabled. Omitted from the response when the policy
  /// is enabled.
  final String? disabledAt;
  /// Display name for the policy configuration. Limited to 255 characters.
  final String? displayName;
  /// Whether the policy is enabled. Derived from disabled*at (enabled when disabled*at is unset).
  final bool? enabled;
  /// The finding type this policy is associated with. Immutable after creation; attempts to change it via update are rejected.
  final String? findingTypeId;
  /// The ID of this resource.
  final String? id;
  /// The integrations this policy applies to.
  final List<String>? integrationIds;
  /// Timestamp of the most recent successful policy invocation. Omitted
  /// from the response when the policy has never been successfully
  /// triggered. Only populated on GET responses; absent on responses from
  /// create/update endpoints.
  final String? lastTriggeredAt;
  final String? policyId;
  /// Timestamp when the policy was last updated.
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCasbPolicyResult].
  /// [accountId] Optional.
  /// [actions] The actions configured for this policy.
  /// [appliesToAllIntegrations] When true, the policy applies to all integrations for the account. When false, it applies only to the specified integration_ids.
  /// [createdAt] Timestamp when the policy was created.
  /// [description] User-set description of what this policy does. Limited to 1000 characters.
  /// [disabledAt] Timestamp when the policy was disabled. Omitted from the response when the policy
  /// [displayName] Display name for the policy configuration. Limited to 255 characters.
  /// [enabled] Whether the policy is enabled. Derived from disabled*at (enabled when disabled*at is unset).
  /// [findingTypeId] The finding type this policy is associated with. Immutable after creation; attempts to change it via update are rejected.
  /// [id] The ID of this resource.
  /// [integrationIds] The integrations this policy applies to.
  /// [lastTriggeredAt] Timestamp of the most recent successful policy invocation. Omitted
  /// [policyId] Optional.
  /// [updatedAt] Timestamp when the policy was last updated.
  const GetZeroTrustCasbPolicyResult({
    this.accountId,
    this.actions,
    this.appliesToAllIntegrations,
    this.createdAt,
    this.description,
    this.disabledAt,
    this.displayName,
    this.enabled,
    this.findingTypeId,
    this.id,
    this.integrationIds,
    this.lastTriggeredAt,
    this.policyId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actions': ?actions?.toMap(),
      'appliesToAllIntegrations': ?appliesToAllIntegrations,
      'createdAt': ?createdAt,
      'description': ?description,
      'disabledAt': ?disabledAt,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'findingTypeId': ?findingTypeId,
      'id': ?id,
      'integrationIds': ?integrationIds,
      'lastTriggeredAt': ?lastTriggeredAt,
      'policyId': ?policyId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCasbPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPolicyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return GetZeroTrustCasbPolicyActions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      appliesToAllIntegrations: (() { final guardedValue = map['appliesToAllIntegrations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabledAt: (() { final guardedValue = map['disabledAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      findingTypeId: (() { final guardedValue = map['findingTypeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationIds: (() { final guardedValue = map['integrationIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lastTriggeredAt: (() { final guardedValue = map['lastTriggeredAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
