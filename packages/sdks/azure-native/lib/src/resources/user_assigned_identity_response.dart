// ignore_for_file: unused_element, unnecessary_cast


/// User-assigned managed identity.
class UserAssignedIdentityResponse {
  /// Client App Id associated with this identity.
  final String clientId;
  /// Azure Active Directory principal ID associated with this identity.
  final String principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Client App Id associated with this identity.
  /// [principalId] Azure Active Directory principal ID associated with this identity.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

