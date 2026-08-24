// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_token_policy_permission_group.dart';

class ApiTokenPolicy {
  /// Allow or deny operations against the resources.
  /// Available values: "allow", "deny".
  final pulumi.Input<String> effect;
  /// A set of permission groups that are specified to the policy.
  final pulumi.Input<List<ApiTokenPolicyPermissionGroup>> permissionGroups;
  /// A json object representing the resources that are specified to the policy.
  final pulumi.Input<String> resources;

  /// Creates a new [ApiTokenPolicy].
  /// [effect] Allow or deny operations against the resources.
  /// [permissionGroups] A set of permission groups that are specified to the policy.
  /// [resources] A json object representing the resources that are specified to the policy.
  const ApiTokenPolicy({
    required this.effect,
    required this.permissionGroups,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'permissionGroups': pulumi.Input.mapInputValue<List<ApiTokenPolicyPermissionGroup>, List<Map<String, dynamic>>>(permissionGroups, (value) => pulumi.Input.encodeList<ApiTokenPolicyPermissionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': resources,
    };
  }

  factory ApiTokenPolicy.fromMap(Map<String, dynamic> map) {
    return ApiTokenPolicy(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      permissionGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ApiTokenPolicyPermissionGroup>(map['permissionGroups']!, (value) => ApiTokenPolicyPermissionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      resources: pulumi.Input.fromValue(map['resources'] as String),
    );
  }
}
