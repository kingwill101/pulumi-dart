// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_access_policy_assignment_args_doc}
/// Arguments for getAccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_redis_get_access_policy_assignment_args_doc}
class GetAccessPolicyAssignmentArgs {
  /// The name of the access policy assignment.
  final pulumi.Input<String> accessPolicyAssignmentName;
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessPolicyAssignmentArgs].
  /// [accessPolicyAssignmentName] The name of the access policy assignment.
  /// [cacheName] The name of the Redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAccessPolicyAssignmentArgs({
    required this.accessPolicyAssignmentName,
    required this.cacheName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyAssignmentName': accessPolicyAssignmentName,
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentArgs(
      accessPolicyAssignmentName: pulumi.Input.fromValue(map['accessPolicyAssignmentName'] as String),
      cacheName: pulumi.Input.fromValue(map['cacheName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
