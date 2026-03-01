// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory identity configuration for a resource.
class UserIdentityResponse {
  /// The Azure Active Directory client id.
  final String clientId;
  /// The Azure Active Directory principal id.
  final String principalId;

  /// Creates a new [UserIdentityResponse].
  /// [clientId] The Azure Active Directory client id.
  /// [principalId] The Azure Active Directory principal id.
  UserIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

