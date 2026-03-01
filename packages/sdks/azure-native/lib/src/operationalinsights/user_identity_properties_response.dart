// ignore_for_file: unused_element, unnecessary_cast


/// User assigned identity properties.
class UserIdentityPropertiesResponse {
  /// The client id of user assigned identity.
  final String clientId;
  /// The principal id of user assigned identity.
  final String principalId;

  /// Creates a new [UserIdentityPropertiesResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  UserIdentityPropertiesResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityPropertiesResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

