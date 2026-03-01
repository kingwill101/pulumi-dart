// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedredis_access_policy_assignment_access_policy_assignment_args_doc}
/// The set of arguments for AccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_managedredis_access_policy_assignment_access_policy_assignment_args_doc}
class AccessPolicyAssignmentArgs {
  /// The ID of the Managed Redis instance. Changing this forces a new Access Policy Assignment to be created.
  final pulumi.Input<String> managedRedisId;
  /// The object ID of the Azure Active Directory user, group, service principal, or managed identity to assign the access policy to. Changing this forces a new Access Policy Assignment to be created.
  ///
  /// > **Note:** Access Policy Assignments are created on the `default` database of the Managed Redis instance.
  final pulumi.Input<String> objectId;

  /// Creates a new [AccessPolicyAssignmentArgs].
  /// [managedRedisId] The ID of the Managed Redis instance. Changing this forces a new Access Policy Assignment to be created.
  /// [objectId] The object ID of the Azure Active Directory user, group, service principal, or managed identity to assign the access policy to. Changing this forces a new Access Policy Assignment to be created.
  AccessPolicyAssignmentArgs({
    required pulumi.Output<String> managedRedisId,
    required pulumi.Output<String> objectId,
  }) :
      managedRedisId = pulumi.Input.asInput<String>(managedRedisId),
      objectId = pulumi.Input.asInput<String>(objectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRedisId': managedRedisId,
      'objectId': objectId,
    };
  }

  factory AccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentArgs(
      managedRedisId: pulumi.Output.create<String>(map['managedRedisId'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
    );
  }
}

