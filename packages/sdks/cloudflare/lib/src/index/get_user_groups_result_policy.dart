// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_result_policy_permission_group.dart';
import 'get_user_groups_result_policy_resource_group.dart';

class GetUserGroupsResultPolicy {
  /// Allow or deny operations against the resources.
  /// Available values: "allow", "deny".
  final pulumi.Input<String> access;
  /// Policy identifier.
  final pulumi.Input<String> id;
  /// A set of permission groups that are specified to the policy.
  final pulumi.Input<List<GetUserGroupsResultPolicyPermissionGroup>> permissionGroups;
  /// A list of resource groups that the policy applies to.
  final pulumi.Input<List<GetUserGroupsResultPolicyResourceGroup>> resourceGroups;

  /// Creates a new [GetUserGroupsResultPolicy].
  /// [access] Allow or deny operations against the resources.
  /// [id] Policy identifier.
  /// [permissionGroups] A set of permission groups that are specified to the policy.
  /// [resourceGroups] A list of resource groups that the policy applies to.
  const GetUserGroupsResultPolicy({
    required this.access,
    required this.id,
    required this.permissionGroups,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'id': id,
      'permissionGroups': pulumi.Input.mapInputValue<List<GetUserGroupsResultPolicyPermissionGroup>, List<Map<String, dynamic>>>(permissionGroups, (value) => pulumi.Input.encodeList<GetUserGroupsResultPolicyPermissionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroups': pulumi.Input.mapInputValue<List<GetUserGroupsResultPolicyResourceGroup>, List<Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeList<GetUserGroupsResultPolicyResourceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserGroupsResultPolicy.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResultPolicy(
      access: pulumi.Input.fromValue(map['access'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      permissionGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupsResultPolicyPermissionGroup>(map['permissionGroups']!, (value) => GetUserGroupsResultPolicyPermissionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupsResultPolicyResourceGroup>(map['resourceGroups']!, (value) => GetUserGroupsResultPolicyResourceGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
