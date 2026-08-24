// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_policy_permission_group.dart';
import 'user_group_policy_resource_group.dart';

class UserGroupPolicy {
  /// Allow or deny operations against the resources.
  /// Available values: "allow", "deny".
  final pulumi.Input<String> access;
  /// A set of permission groups that are specified to the policy.
  final pulumi.Input<List<UserGroupPolicyPermissionGroup>> permissionGroups;
  /// A set of resource groups that are specified to the policy.
  final pulumi.Input<List<UserGroupPolicyResourceGroup>> resourceGroups;

  /// Creates a new [UserGroupPolicy].
  /// [access] Allow or deny operations against the resources.
  /// [permissionGroups] A set of permission groups that are specified to the policy.
  /// [resourceGroups] A set of resource groups that are specified to the policy.
  const UserGroupPolicy({
    required this.access,
    required this.permissionGroups,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'permissionGroups': pulumi.Input.mapInputValue<List<UserGroupPolicyPermissionGroup>, List<Map<String, dynamic>>>(permissionGroups, (value) => pulumi.Input.encodeList<UserGroupPolicyPermissionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroups': pulumi.Input.mapInputValue<List<UserGroupPolicyResourceGroup>, List<Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeList<UserGroupPolicyResourceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserGroupPolicy.fromMap(Map<String, dynamic> map) {
    return UserGroupPolicy(
      access: pulumi.Input.fromValue(map['access'] as String),
      permissionGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupPolicyPermissionGroup>(map['permissionGroups']!, (value) => UserGroupPolicyPermissionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupPolicyResourceGroup>(map['resourceGroups']!, (value) => UserGroupPolicyResourceGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
