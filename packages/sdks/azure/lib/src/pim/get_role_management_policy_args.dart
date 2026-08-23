// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pim_get_role_management_policy_get_role_management_policy_args_doc}
/// Arguments for getRoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_pim_get_role_management_policy_get_role_management_policy_args_doc}
class GetRoleManagementPolicyArgs {
  /// The scoped Role Definition ID of the role for which this policy applies.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope to which this Role Management Policy applies. Can refer to a management group, a subscription, a resource group or a resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRoleManagementPolicyArgs].
  /// [roleDefinitionId] The scoped Role Definition ID of the role for which this policy applies.
  /// [scope] The scope to which this Role Management Policy applies. Can refer to a management group, a subscription, a resource group or a resource.
  const GetRoleManagementPolicyArgs({
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory GetRoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyArgs(
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
