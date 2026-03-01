// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory identity configuration for a resource.
class ManagedIdentity {
  /// The identity type
  final String? type;
  /// The resource ids of the user assigned identities to use
  final List<String>? userAssignedIdentities;

  /// Creates a new [ManagedIdentity].
  /// [type] The identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  ManagedIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

