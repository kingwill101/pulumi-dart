// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_firewall_policy_iam_policy_get_firewall_policy_iam_policy_args_doc}
/// Arguments for getFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_firewall_policy_iam_policy_get_firewall_policy_iam_policy_args_doc}
class GetFirewallPolicyIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  /// Creates a new [GetFirewallPolicyIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  const GetFirewallPolicyIamPolicyArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetFirewallPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
