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
  GetAccessPolicyAssignmentArgs({
    required pulumi.Output<String> accessPolicyAssignmentName,
    required pulumi.Output<String> cacheName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accessPolicyAssignmentName = pulumi.Input.asInput<String>(accessPolicyAssignmentName),
      cacheName = pulumi.Input.asInput<String>(cacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyAssignmentName': accessPolicyAssignmentName,
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentArgs(
      accessPolicyAssignmentName: pulumi.Output.create<String>(map['accessPolicyAssignmentName'] as String),
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

