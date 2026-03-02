// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_access_policy_assignment_args_doc}
/// The set of arguments for AccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_redis_access_policy_assignment_args_doc}
class AccessPolicyAssignmentArgs {
  /// The name of the access policy assignment.
  final pulumi.Input<String>? accessPolicyAssignmentName;
  /// The name of the access policy that is being assigned
  final pulumi.Input<String> accessPolicyName;
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// Object Id to assign access policy to
  final pulumi.Input<String> objectId;
  /// User friendly name for object id. Also represents username for token based authentication
  final pulumi.Input<String> objectIdAlias;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AccessPolicyAssignmentArgs].
  /// [accessPolicyAssignmentName] The name of the access policy assignment.
  /// [accessPolicyName] The name of the access policy that is being assigned
  /// [cacheName] The name of the Redis cache.
  /// [objectId] Object Id to assign access policy to
  /// [objectIdAlias] User friendly name for object id. Also represents username for token based authentication
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AccessPolicyAssignmentArgs({
    this.accessPolicyAssignmentName,
    required this.accessPolicyName,
    required this.cacheName,
    required this.objectId,
    required this.objectIdAlias,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyAssignmentName': ?accessPolicyAssignmentName,
      'accessPolicyName': accessPolicyName,
      'cacheName': cacheName,
      'objectId': objectId,
      'objectIdAlias': objectIdAlias,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentArgs(
      accessPolicyAssignmentName: map['accessPolicyAssignmentName'] == null ? null : (map['accessPolicyAssignmentName'] as String).input(),
      accessPolicyName: (map['accessPolicyName'] as String).input(),
      cacheName: (map['cacheName'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      objectIdAlias: (map['objectIdAlias'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

