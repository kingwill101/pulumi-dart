// ignore_for_file: unused_element, unnecessary_cast


/// The Managed Identity of the resource
class Identity {
  /// Identity Type
  final String? type;
  /// User Assigned Identities
  final List<String>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] Identity Type
  /// [userAssignedIdentities] User Assigned Identities
  Identity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

