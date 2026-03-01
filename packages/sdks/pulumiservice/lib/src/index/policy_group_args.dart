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
  PolicyGroupArgs({
    pulumi.Output<List<String>>? accounts,
    pulumi.Output<String>? entityType,
    pulumi.Output<String>? mode,
    required pulumi.Output<String> name,
    required pulumi.Output<String> organizationName,
    pulumi.Output<List<PolicyGroupPolicyPackReference>>? policyPacks,
    pulumi.Output<List<PolicyGroupStackReference>>? stacks,
  }) :
      accounts = pulumi.Input.asOptionalInput<List<String>>(accounts),
      entityType = pulumi.Input.asOptionalInput<String>(entityType),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asInput<String>(name),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      policyPacks = pulumi.Input.asOptionalInput<List<PolicyGroupPolicyPackReference>>(policyPacks),
      stacks = pulumi.Input.asOptionalInput<List<PolicyGroupStackReference>>(stacks);

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
      accounts: map['accounts'] == null ? null : pulumi.Output.create<List<String>>((map['accounts'] as List).cast<String>()),
      entityType: map['entityType'] == null ? null : pulumi.Output.create<String>(map['entityType'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      policyPacks: map['policyPacks'] == null ? null : pulumi.Output.create<List<PolicyGroupPolicyPackReference>>(pulumi.Input.decodeList<PolicyGroupPolicyPackReference>(map['policyPacks'], (value) => PolicyGroupPolicyPackReference.fromMap((value as Map).cast<String, dynamic>()))),
      stacks: map['stacks'] == null ? null : pulumi.Output.create<List<PolicyGroupStackReference>>(pulumi.Input.decodeList<PolicyGroupStackReference>(map['stacks'], (value) => PolicyGroupStackReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

