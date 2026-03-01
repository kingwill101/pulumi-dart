// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedredis_get_access_policy_assignment_get_access_policy_assignment_args_doc}
/// Arguments for getAccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_managedredis_get_access_policy_assignment_get_access_policy_assignment_args_doc}
class GetAccessPolicyAssignmentArgs {
  /// The name of the Managed Redis instance.
  final pulumi.Input<String> managedRedisName;
  /// The object ID of the Azure Active Directory user, group, service principal, or managed identity.
  final pulumi.Input<String> objectId;
  /// The name of the Resource Group where the Managed Redis instance exists.
  ///
  /// > **Note:** This data source retrieves Access Policy Assignments from the `default` database of the Managed Redis instance.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessPolicyAssignmentArgs].
  /// [managedRedisName] The name of the Managed Redis instance.
  /// [objectId] The object ID of the Azure Active Directory user, group, service principal, or managed identity.
  /// [resourceGroupName] The name of the Resource Group where the Managed Redis instance exists.
  GetAccessPolicyAssignmentArgs({
    required pulumi.Output<String> managedRedisName,
    required pulumi.Output<String> objectId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      managedRedisName = pulumi.Input.asInput<String>(managedRedisName),
      objectId = pulumi.Input.asInput<String>(objectId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRedisName': managedRedisName,
      'objectId': objectId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentArgs(
      managedRedisName: pulumi.Output.create<String>(map['managedRedisName'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

