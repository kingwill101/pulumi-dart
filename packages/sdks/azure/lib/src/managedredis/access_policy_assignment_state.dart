// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPolicyAssignment resources.
class AccessPolicyAssignmentState {
  /// The ID of the Managed Redis instance. Changing this forces a new Access Policy Assignment to be created.
  final pulumi.Input<String>? managedRedisId;
  /// The object ID of the Azure Active Directory user, group, service principal, or managed identity to assign the access policy to. Changing this forces a new Access Policy Assignment to be created.
  ///
  /// &gt; **Note:** Access Policy Assignments are created on the `default` database of the Managed Redis instance.
  final pulumi.Input<String>? objectId;

  /// Creates a new [AccessPolicyAssignmentState].
  /// [managedRedisId] The ID of the Managed Redis instance. Changing this forces a new Access Policy Assignment to be created.
  /// [objectId] The object ID of the Azure Active Directory user, group, service principal, or managed identity to assign the access policy to. Changing this forces a new Access Policy Assignment to be created.
  const AccessPolicyAssignmentState({
    this.managedRedisId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRedisId': ?managedRedisId,
      'objectId': ?objectId,
    };
  }

  factory AccessPolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentState(
      managedRedisId: (() { final guardedValue = map['managedRedisId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

