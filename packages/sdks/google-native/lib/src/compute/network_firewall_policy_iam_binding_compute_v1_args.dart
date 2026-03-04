// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';

/// {@template pulumi_compute_v1_network_firewall_policy_iam_binding_compute_v1_args_doc}
/// The set of arguments for NetworkFirewallPolicyIamBinding.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_network_firewall_policy_iam_binding_compute_v1_args_doc}
class NetworkFirewallPolicyIamBindingComputeV1Args {
  /// An IAM Condition for a given binding.
  final pulumi.Input<Condition>? condition;

  /// Identities that will be granted the privilege in role. Each entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The name of the resource to manage IAM policies for.
  final pulumi.Input<String> name;

  /// The role that should be applied. Only one `IamBinding` can be used per role.
  final pulumi.Input<String> role;

  /// Creates a new [NetworkFirewallPolicyIamBindingComputeV1Args].
  /// [condition] An IAM Condition for a given binding.
  /// [members] Identities that will be granted the privilege in role. Each entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied. Only one `IamBinding` can be used per role.
  NetworkFirewallPolicyIamBindingComputeV1Args({
    this.condition,
    required this.members,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            condition,
            (value) => value.toMap(),
          ),
      'members': members,
      'name': name,
      'role': role,
    };
  }

  factory NetworkFirewallPolicyIamBindingComputeV1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkFirewallPolicyIamBindingComputeV1Args(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
