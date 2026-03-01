// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_boundary_policy_rule.dart';

/// {@template pulumi_iam_access_boundary_policy_access_boundary_policy_args_doc}
/// The set of arguments for AccessBoundaryPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_access_boundary_policy_access_boundary_policy_args_doc}
class AccessBoundaryPolicyArgs {
  /// The display name of the rule.
  final pulumi.Input<String>? displayName;
  /// The name of the policy.
  final pulumi.Input<String>? name;
  /// The attachment point is identified by its URL-encoded full resource name.
  final pulumi.Input<String> parent;
  /// Rules to be applied.
  /// Structure is documented below.
  final pulumi.Input<List<AccessBoundaryPolicyRule>> rules;

  /// Creates a new [AccessBoundaryPolicyArgs].
  /// [displayName] The display name of the rule.
  /// [name] The name of the policy.
  /// [parent] The attachment point is identified by its URL-encoded full resource name.
  /// [rules] Rules to be applied.
  AccessBoundaryPolicyArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> parent,
    required pulumi.Output<List<AccessBoundaryPolicyRule>> rules,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asInput<String>(parent),
      rules = pulumi.Input.asInput<List<AccessBoundaryPolicyRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'parent': parent,
      'rules': pulumi.Input.mapInputValue<List<AccessBoundaryPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AccessBoundaryPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessBoundaryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessBoundaryPolicyArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      rules: pulumi.Output.create<List<AccessBoundaryPolicyRule>>(pulumi.Input.decodeList<AccessBoundaryPolicyRule>(map['rules'], (value) => AccessBoundaryPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

