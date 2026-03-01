// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redisenterprise_get_access_policy_assignment_args_doc}
/// Arguments for getAccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_get_access_policy_assignment_args_doc}
class GetAccessPolicyAssignmentArgs {
  /// The name of the Redis Enterprise database access policy assignment.
  final pulumi.Input<String> accessPolicyAssignmentName;
  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String> clusterName;
  /// The name of the Redis Enterprise database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessPolicyAssignmentArgs].
  /// [accessPolicyAssignmentName] The name of the Redis Enterprise database access policy assignment.
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [databaseName] The name of the Redis Enterprise database.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccessPolicyAssignmentArgs({
    required pulumi.Output<String> accessPolicyAssignmentName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accessPolicyAssignmentName = pulumi.Input.asInput<String>(accessPolicyAssignmentName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyAssignmentName': accessPolicyAssignmentName,
      'clusterName': clusterName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentArgs(
      accessPolicyAssignmentName: pulumi.Output.create<String>(map['accessPolicyAssignmentName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

