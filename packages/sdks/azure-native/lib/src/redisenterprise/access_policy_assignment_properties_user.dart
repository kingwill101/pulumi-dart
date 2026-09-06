// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user associated with the access policy.
class AccessPolicyAssignmentPropertiesUser {
  /// The object ID of the user.
  final pulumi.Input<String?>? objectId;

  /// Creates a new [AccessPolicyAssignmentPropertiesUser].
  /// [objectId] The object ID of the user.
  const AccessPolicyAssignmentPropertiesUser({
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
    };
  }

  factory AccessPolicyAssignmentPropertiesUser.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentPropertiesUser(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
