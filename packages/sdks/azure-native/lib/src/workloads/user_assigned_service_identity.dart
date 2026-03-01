// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity (user assigned identities)
class UserAssignedServiceIdentity {
  /// Type of manage identity
  final String type;
  /// User assigned identities dictionary
  final List<String>? userAssignedIdentities;

  /// Creates a new [UserAssignedServiceIdentity].
  /// [type] Type of manage identity
  /// [userAssignedIdentities] User assigned identities dictionary
  UserAssignedServiceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory UserAssignedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedServiceIdentity(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

