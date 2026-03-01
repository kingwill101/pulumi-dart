// ignore_for_file: unused_element, unnecessary_cast


/// Properties of user assigned identity.
class UserAssignedIdentityPropertyResponse {
  /// Get the client id for the user assigned identity
  final String clientId;
  /// Get the principal id for the user assigned identity
  final String principalId;

  /// Creates a new [UserAssignedIdentityPropertyResponse].
  /// [clientId] Get the client id for the user assigned identity
  /// [principalId] Get the principal id for the user assigned identity
  UserAssignedIdentityPropertyResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityPropertyResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityPropertyResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

