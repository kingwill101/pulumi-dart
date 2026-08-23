// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_policy_rule.dart';

/// {@template pulumi_iam_deny_policy_deny_policy_args_doc}
/// The set of arguments for DenyPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_deny_policy_deny_policy_args_doc}
class DenyPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the rule.
  final pulumi.Input<String>? displayName;
  /// The name of the policy.
  final pulumi.Input<String>? name;
  /// The attachment point is identified by its URL-encoded full resource name.
  final pulumi.Input<String> parent;
  /// Rules to be applied.
  /// Structure is documented below.
  final pulumi.Input<List<DenyPolicyRule>> rules;

  /// Creates a new [DenyPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the rule.
  /// [name] The name of the policy.
  /// [parent] The attachment point is identified by its URL-encoded full resource name.
  /// [rules] Rules to be applied.
  const DenyPolicyArgs({
    this.deletionPolicy,
    this.displayName,
    this.name,
    required this.parent,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'parent': parent,
      'rules': pulumi.Input.mapInputValue<List<DenyPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DenyPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DenyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DenyPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<DenyPolicyRule>(map['rules']!, (value) => DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
