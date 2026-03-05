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
    this.displayName,
    this.name,
    required this.parent,
    required this.rules,
  });

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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<AccessBoundaryPolicyRule>(map['rules']!, (value) => AccessBoundaryPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

