// ignore_for_file: unused_element, unnecessary_cast


/// User assigned managed identity properties
class UserAssignedIdentityPropertiesResponse {
  /// The client ID of the assigned identity.
  final String? clientId;
  /// The principal ID of the assigned identity.
  final String? principalId;

  /// Creates a new [UserAssignedIdentityPropertiesResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  UserAssignedIdentityPropertiesResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityPropertiesResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

