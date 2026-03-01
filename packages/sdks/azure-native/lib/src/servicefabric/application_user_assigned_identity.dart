// ignore_for_file: unused_element, unnecessary_cast


class ApplicationUserAssignedIdentity {
  /// The friendly name of user assigned identity.
  final String name;
  /// The principal id of user assigned identity.
  final String principalId;

  /// Creates a new [ApplicationUserAssignedIdentity].
  /// [name] The friendly name of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  ApplicationUserAssignedIdentity({
    required this.name,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'principalId': principalId,
    };
  }

  factory ApplicationUserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return ApplicationUserAssignedIdentity(
      name: map['name'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

