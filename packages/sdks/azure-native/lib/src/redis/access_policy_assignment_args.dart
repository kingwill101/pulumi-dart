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
    pulumi.Output<String>? accessPolicyAssignmentName,
    required pulumi.Output<String> accessPolicyName,
    required pulumi.Output<String> cacheName,
    required pulumi.Output<String> objectId,
    required pulumi.Output<String> objectIdAlias,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accessPolicyAssignmentName = pulumi.Input.asOptionalInput<String>(accessPolicyAssignmentName),
      accessPolicyName = pulumi.Input.asInput<String>(accessPolicyName),
      cacheName = pulumi.Input.asInput<String>(cacheName),
      objectId = pulumi.Input.asInput<String>(objectId),
      objectIdAlias = pulumi.Input.asInput<String>(objectIdAlias),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accessPolicyAssignmentName: map['accessPolicyAssignmentName'] == null ? null : pulumi.Output.create<String>(map['accessPolicyAssignmentName'] as String),
      accessPolicyName: pulumi.Output.create<String>(map['accessPolicyName'] as String),
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
      objectIdAlias: pulumi.Output.create<String>(map['objectIdAlias'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

