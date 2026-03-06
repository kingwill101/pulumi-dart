// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_policy_pack_reference.dart';
import 'policy_group_stack_reference.dart';

/// {@template pulumi_index_policy_group_args_doc}
/// The set of arguments for PolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_index_policy_group_args_doc}
class PolicyGroupArgs {
  /// List of accounts that belong to this policy group.
  final pulumi.Input<List<String>>? accounts;
  /// The entity type for the policy group. Valid values are 'stacks' or 'accounts'. Defaults to 'stacks'.
  final pulumi.Input<String>? entityType;
  /// The mode for the policy group. Valid values are 'audit' (reports violations) or 'preventative' (blocks operations). Defaults to 'audit'.
  final pulumi.Input<String>? mode;
  /// The name of the policy group.
  final pulumi.Input<String> name;
  /// The name of the Pulumi organization the policy group belongs to.
  final pulumi.Input<String> organizationName;
  /// List of policy packs applied to this policy group.
  final pulumi.Input<List<PolicyGroupPolicyPackReference>>? policyPacks;
  /// List of stack references that belong to this policy group.
  final pulumi.Input<List<PolicyGroupStackReference>>? stacks;

  /// Creates a new [PolicyGroupArgs].
  /// [accounts] List of accounts that belong to this policy group.
  /// [entityType] The entity type for the policy group. Valid values are 'stacks' or 'accounts'. Defaults to 'stacks'.
  /// [mode] The mode for the policy group. Valid values are 'audit' (reports violations) or 'preventative' (blocks operations). Defaults to 'audit'.
  /// [name] The name of the policy group.
  /// [organizationName] The name of the Pulumi organization the policy group belongs to.
  /// [policyPacks] List of policy packs applied to this policy group.
  /// [stacks] List of stack references that belong to this policy group.
  const PolicyGroupArgs({
    this.accounts,
    this.entityType,
    this.mode,
    required this.name,
    required this.organizationName,
    this.policyPacks,
    this.stacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'entityType': ?entityType,
      'mode': ?mode,
      'name': name,
      'organizationName': organizationName,
      'policyPacks': ?pulumi.Input.mapOptionalInputValue<List<PolicyGroupPolicyPackReference>, List<Map<String, dynamic>>>(policyPacks, (value) => pulumi.Input.encodeList<PolicyGroupPolicyPackReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stacks': ?pulumi.Input.mapOptionalInputValue<List<PolicyGroupStackReference>, List<Map<String, dynamic>>>(stacks, (value) => pulumi.Input.encodeList<PolicyGroupStackReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return PolicyGroupArgs(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      policyPacks: (() { final guardedValue = map['policyPacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyGroupPolicyPackReference>(guardedValue, (value) => PolicyGroupPolicyPackReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stacks: (() { final guardedValue = map['stacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyGroupStackReference>(guardedValue, (value) => PolicyGroupStackReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

