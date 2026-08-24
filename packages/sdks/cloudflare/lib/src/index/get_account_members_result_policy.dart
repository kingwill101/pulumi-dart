// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result_policy_permission_group.dart';
import 'get_account_members_result_policy_resource_group.dart';

class GetAccountMembersResultPolicy {
  /// Allow or deny operations against the resources.
  /// Available values: "allow", "deny".
  final pulumi.Input<String> access;
  /// Policy identifier.
  final pulumi.Input<String> id;
  /// A set of permission groups that are specified to the policy.
  final pulumi.Input<List<GetAccountMembersResultPolicyPermissionGroup>> permissionGroups;
  /// A list of resource groups that the policy applies to.
  final pulumi.Input<List<GetAccountMembersResultPolicyResourceGroup>> resourceGroups;

  /// Creates a new [GetAccountMembersResultPolicy].
  /// [access] Allow or deny operations against the resources.
  /// [id] Policy identifier.
  /// [permissionGroups] A set of permission groups that are specified to the policy.
  /// [resourceGroups] A list of resource groups that the policy applies to.
  const GetAccountMembersResultPolicy({
    required this.access,
    required this.id,
    required this.permissionGroups,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'id': id,
      'permissionGroups': pulumi.Input.mapInputValue<List<GetAccountMembersResultPolicyPermissionGroup>, List<Map<String, dynamic>>>(permissionGroups, (value) => pulumi.Input.encodeList<GetAccountMembersResultPolicyPermissionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroups': pulumi.Input.mapInputValue<List<GetAccountMembersResultPolicyResourceGroup>, List<Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeList<GetAccountMembersResultPolicyResourceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountMembersResultPolicy.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultPolicy(
      access: pulumi.Input.fromValue(map['access'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      permissionGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMembersResultPolicyPermissionGroup>(map['permissionGroups']!, (value) => GetAccountMembersResultPolicyPermissionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMembersResultPolicyResourceGroup>(map['resourceGroups']!, (value) => GetAccountMembersResultPolicyResourceGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
