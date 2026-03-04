// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_assignment_properties_user.dart';

/// {@template pulumi_redisenterprise_access_policy_assignment_args_doc}
/// The set of arguments for AccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_access_policy_assignment_args_doc}
class AccessPolicyAssignmentArgs {
  /// The name of the Redis Enterprise database access policy assignment.
  final pulumi.Input<String>? accessPolicyAssignmentName;

  /// Name of access policy under specific access policy assignment. Only "default" policy is supported for now.
  final pulumi.Input<String> accessPolicyName;

  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String> clusterName;

  /// The name of the Redis Enterprise database.
  final pulumi.Input<String> databaseName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The user associated with the access policy.
  final pulumi.Input<AccessPolicyAssignmentPropertiesUser> user;

  /// Creates a new [AccessPolicyAssignmentArgs].
  /// [accessPolicyAssignmentName] The name of the Redis Enterprise database access policy assignment.
  /// [accessPolicyName] Name of access policy under specific access policy assignment. Only "default" policy is supported for now.
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [databaseName] The name of the Redis Enterprise database.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [user] The user associated with the access policy.
  AccessPolicyAssignmentArgs({
    this.accessPolicyAssignmentName,
    required this.accessPolicyName,
    required this.clusterName,
    required this.databaseName,
    required this.resourceGroupName,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyAssignmentName': ?accessPolicyAssignmentName,
      'accessPolicyName': accessPolicyName,
      'clusterName': clusterName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'user':
          pulumi.Input.mapInputValue<
            AccessPolicyAssignmentPropertiesUser,
            Map<String, dynamic>
          >(user, (value) => value.toMap()),
    };
  }

  factory AccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentArgs(
      accessPolicyAssignmentName: (() {
        final guardedValue = map['accessPolicyAssignmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessPolicyName: pulumi.Input.fromValue(
        map['accessPolicyName'] as String,
      ),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      user: pulumi.Input.fromValue(
        AccessPolicyAssignmentPropertiesUser.fromMap(
          (map['user']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
