// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_policy_actions.dart';

/// {@template pulumi_index_zero_trust_casb_policy_zero_trust_casb_policy_args_doc}
/// The set of arguments for ZeroTrustCasbPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_casb_policy_zero_trust_casb_policy_args_doc}
class ZeroTrustCasbPolicyArgs {
  final pulumi.Input<String> accountId;
  /// Actions to execute when this policy is triggered, grouped by action type.
  /// A policy must contain at least one action across all groups and may include
  /// at most one remediation.
  final pulumi.Input<ZeroTrustCasbPolicyActions> actions;
  /// When true, the policy applies to all integrations for the account. When false, integrationIds must be provided.
  final pulumi.Input<bool> appliesToAllIntegrations;
  /// Optional description of what this policy does.
  final pulumi.Input<String?>? description;
  /// Display name for the policy configuration.
  final pulumi.Input<String> displayName;
  /// Boolean specifying if the policy is enabled or disabled.
  final pulumi.Input<bool> enabled;
  /// The finding type this policy is associated with. All remediation actions must match this finding type.
  final pulumi.Input<String> findingTypeId;
  /// The integrations this policy applies to. Required when applies*to*all_integrations is false.
  final pulumi.Input<List<String>?>? integrationIds;

  /// Creates a new [ZeroTrustCasbPolicyArgs].
  /// [accountId] Required.
  /// [actions] Actions to execute when this policy is triggered, grouped by action type.
  /// [appliesToAllIntegrations] When true, the policy applies to all integrations for the account. When false, integrationIds must be provided.
  /// [description] Optional description of what this policy does.
  /// [displayName] Display name for the policy configuration.
  /// [enabled] Boolean specifying if the policy is enabled or disabled.
  /// [findingTypeId] The finding type this policy is associated with. All remediation actions must match this finding type.
  /// [integrationIds] The integrations this policy applies to. Required when applies*to*all_integrations is false.
  const ZeroTrustCasbPolicyArgs({
    required this.accountId,
    required this.actions,
    required this.appliesToAllIntegrations,
    this.description,
    required this.displayName,
    required this.enabled,
    required this.findingTypeId,
    this.integrationIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'actions': pulumi.Input.mapInputValue<ZeroTrustCasbPolicyActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'appliesToAllIntegrations': appliesToAllIntegrations,
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'findingTypeId': findingTypeId,
      'integrationIds': ?integrationIds,
    };
  }

  factory ZeroTrustCasbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      actions: pulumi.Input.fromValue(ZeroTrustCasbPolicyActions.fromMap((map['actions']! as Map).cast<String, dynamic>())),
      appliesToAllIntegrations: pulumi.Input.fromValue(map['appliesToAllIntegrations'] as bool),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      findingTypeId: pulumi.Input.fromValue(map['findingTypeId'] as String),
      integrationIds: (() { final guardedValue = map['integrationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
