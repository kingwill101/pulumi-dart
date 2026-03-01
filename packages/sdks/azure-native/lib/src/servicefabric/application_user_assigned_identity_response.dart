// ignore_for_file: unused_element, unnecessary_cast


class ApplicationUserAssignedIdentityResponse {
  /// The friendly name of user assigned identity.
  final String name;
  /// The principal id of user assigned identity.
  final String principalId;

  /// Creates a new [ApplicationUserAssignedIdentityResponse].
  /// [name] The friendly name of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  ApplicationUserAssignedIdentityResponse({
    required this.name,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'principalId': principalId,
    };
  }

  factory ApplicationUserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationUserAssignedIdentityResponse(
      name: map['name'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

