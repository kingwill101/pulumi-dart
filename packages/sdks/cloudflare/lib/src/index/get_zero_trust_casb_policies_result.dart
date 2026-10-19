// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_policies_result_actions.dart';

class GetZeroTrustCasbPoliciesResult {
  /// The actions configured for this policy.
  final pulumi.Input<GetZeroTrustCasbPoliciesResultActions> actions;
  /// When true, the policy applies to all integrations for the account. When false, it applies only to the specified integration_ids.
  final pulumi.Input<bool> appliesToAllIntegrations;
  /// Timestamp when the policy was created.
  final pulumi.Input<String> createdAt;
  /// User-set description of what this policy does. Limited to 1000 characters.
  final pulumi.Input<String> description;
  /// Timestamp when the policy was disabled. Omitted from the response when the policy
  /// is enabled.
  final pulumi.Input<String> disabledAt;
  /// Display name for the policy configuration. Limited to 255 characters.
  final pulumi.Input<String> displayName;
  /// Whether the policy is enabled. Derived from disabled*at (enabled when disabled*at is unset).
  final pulumi.Input<bool> enabled;
  /// The finding type this policy is associated with. Immutable after creation; changing it replaces the policy.
  final pulumi.Input<String> findingTypeId;
  /// Unique identifier for the policy configuration.
  final pulumi.Input<String> id;
  /// The integrations this policy applies to.
  final pulumi.Input<List<String>> integrationIds;
  /// Timestamp of the most recent successful policy invocation. Omitted
  /// from the response when the policy has never been successfully
  /// triggered. Only populated on GET responses; absent on responses from
  /// create/update endpoints.
  final pulumi.Input<String> lastTriggeredAt;
  /// Timestamp when the policy was last updated.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCasbPoliciesResult].
  /// [actions] The actions configured for this policy.
  /// [appliesToAllIntegrations] When true, the policy applies to all integrations for the account. When false, it applies only to the specified integration_ids.
  /// [createdAt] Timestamp when the policy was created.
  /// [description] User-set description of what this policy does. Limited to 1000 characters.
  /// [disabledAt] Timestamp when the policy was disabled. Omitted from the response when the policy
  /// [displayName] Display name for the policy configuration. Limited to 255 characters.
  /// [enabled] Whether the policy is enabled. Derived from disabled*at (enabled when disabled*at is unset).
  /// [findingTypeId] The finding type this policy is associated with. Immutable after creation; changing it replaces the policy.
  /// [id] Unique identifier for the policy configuration.
  /// [integrationIds] The integrations this policy applies to.
  /// [lastTriggeredAt] Timestamp of the most recent successful policy invocation. Omitted
  /// [updatedAt] Timestamp when the policy was last updated.
  const GetZeroTrustCasbPoliciesResult({
    required this.actions,
    required this.appliesToAllIntegrations,
    required this.createdAt,
    required this.description,
    required this.disabledAt,
    required this.displayName,
    required this.enabled,
    required this.findingTypeId,
    required this.id,
    required this.integrationIds,
    required this.lastTriggeredAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<GetZeroTrustCasbPoliciesResultActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'appliesToAllIntegrations': appliesToAllIntegrations,
      'createdAt': createdAt,
      'description': description,
      'disabledAt': disabledAt,
      'displayName': displayName,
      'enabled': enabled,
      'findingTypeId': findingTypeId,
      'id': id,
      'integrationIds': integrationIds,
      'lastTriggeredAt': lastTriggeredAt,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCasbPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPoliciesResult(
      actions: pulumi.Input.fromValue(GetZeroTrustCasbPoliciesResultActions.fromMap((map['actions']! as Map).cast<String, dynamic>())),
      appliesToAllIntegrations: pulumi.Input.fromValue(map['appliesToAllIntegrations'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      disabledAt: pulumi.Input.fromValue(map['disabledAt'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      findingTypeId: pulumi.Input.fromValue(map['findingTypeId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      integrationIds: pulumi.Input.fromValue((map['integrationIds'] as List).cast<String>()),
      lastTriggeredAt: pulumi.Input.fromValue(map['lastTriggeredAt'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
