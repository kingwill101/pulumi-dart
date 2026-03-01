// ignore_for_file: unused_element, unnecessary_cast


/// Uses client ID and Principal ID
class UserAssignedIdentityResponse {
  /// Gets or Sets Client ID
  final String clientId;
  /// Gets or Sets Principal ID
  final String principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Gets or Sets Client ID
  /// [principalId] Gets or Sets Principal ID
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

