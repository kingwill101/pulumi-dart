// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_policy_assignment_get_policy_assignment_args_doc}
/// Arguments for getPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_policy_get_policy_assignment_get_policy_assignment_args_doc}
class GetPolicyAssignmentArgs {
  /// The name of this Policy Assignment. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> name;

  /// The ID of the scope this Policy Assignment is assigned to. The `scope_id` can be a subscription id, a resource group id, a management group id, or an ID of any resource that is assigned with a policy. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetPolicyAssignmentArgs].
  /// [name] The name of this Policy Assignment. Changing this forces a new Policy Assignment to be created.
  /// [scopeId] The ID of the scope this Policy Assignment is assigned to. The `scope_id` can be a subscription id, a resource group id, a management group id, or an ID of any resource that is assigned with a policy. Changing this forces a new Policy Assignment to be created.
  GetPolicyAssignmentArgs({required this.name, required this.scopeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'scopeId': scopeId};
  }

  factory GetPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
