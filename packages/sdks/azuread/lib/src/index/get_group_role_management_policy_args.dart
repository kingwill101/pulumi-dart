// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_group_role_management_policy_get_group_role_management_policy_args_doc}
/// Arguments for getGroupRoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_group_role_management_policy_get_group_role_management_policy_args_doc}
class GetGroupRoleManagementPolicyArgs {
  /// The ID of the Azure AD group for which the policy applies.
  final pulumi.Input<String> groupId;
  /// The type of assignment this policy coveres. Can be either `member` or `owner`.
  final pulumi.Input<String> roleId;

  /// Creates a new [GetGroupRoleManagementPolicyArgs].
  /// [groupId] The ID of the Azure AD group for which the policy applies.
  /// [roleId] The type of assignment this policy coveres. Can be either `member` or `owner`.
  GetGroupRoleManagementPolicyArgs({
    required this.groupId,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'roleId': roleId,
    };
  }

  factory GetGroupRoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupRoleManagementPolicyArgs(
      groupId: (map['groupId'] as String).input(),
      roleId: (map['roleId'] as String).input(),
    );
  }
}

