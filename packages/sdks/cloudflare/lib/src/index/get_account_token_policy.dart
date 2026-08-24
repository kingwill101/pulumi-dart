// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_token_policy_permission_group.dart';

class GetAccountTokenPolicy {
  /// Allow or deny operations against the resources.
  /// Available values: "allow", "deny".
  final pulumi.Input<String> effect;
  /// Policy identifier.
  final pulumi.Input<String> id;
  /// A set of permission groups that are specified to the policy.
  final pulumi.Input<List<GetAccountTokenPolicyPermissionGroup>> permissionGroups;
  /// A list of resource names that the policy applies to.
  final pulumi.Input<Map<String, String>> resources;

  /// Creates a new [GetAccountTokenPolicy].
  /// [effect] Allow or deny operations against the resources.
  /// [id] Policy identifier.
  /// [permissionGroups] A set of permission groups that are specified to the policy.
  /// [resources] A list of resource names that the policy applies to.
  const GetAccountTokenPolicy({
    required this.effect,
    required this.id,
    required this.permissionGroups,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'id': id,
      'permissionGroups': pulumi.Input.mapInputValue<List<GetAccountTokenPolicyPermissionGroup>, List<Map<String, dynamic>>>(permissionGroups, (value) => pulumi.Input.encodeList<GetAccountTokenPolicyPermissionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': resources,
    };
  }

  factory GetAccountTokenPolicy.fromMap(Map<String, dynamic> map) {
    return GetAccountTokenPolicy(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      permissionGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountTokenPolicyPermissionGroup>(map['permissionGroups']!, (value) => GetAccountTokenPolicyPermissionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      resources: pulumi.Input.fromValue((map['resources'] as Map).cast<String, String>()),
    );
  }
}
