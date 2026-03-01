// ignore_for_file: unused_element, unnecessary_cast


/// The user associated with the access policy.
class AccessPolicyAssignmentPropertiesResponseUser {
  /// The object ID of the user.
  final String? objectId;

  /// Creates a new [AccessPolicyAssignmentPropertiesResponseUser].
  /// [objectId] The object ID of the user.
  AccessPolicyAssignmentPropertiesResponseUser({
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
    };
  }

  factory AccessPolicyAssignmentPropertiesResponseUser.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssignmentPropertiesResponseUser(
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

