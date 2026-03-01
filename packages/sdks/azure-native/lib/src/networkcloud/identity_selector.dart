// ignore_for_file: unused_element, unnecessary_cast


class IdentitySelector {
  /// The type of managed identity that is being selected.
  final String? identityType;
  /// The user assigned managed identity resource ID to use. Mutually exclusive with a system assigned identity type.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [IdentitySelector].
  /// [identityType] The type of managed identity that is being selected.
  /// [userAssignedIdentityResourceId] The user assigned managed identity resource ID to use. Mutually exclusive with a system assigned identity type.
  IdentitySelector({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory IdentitySelector.fromMap(Map<String, dynamic> map) {
    return IdentitySelector(
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

