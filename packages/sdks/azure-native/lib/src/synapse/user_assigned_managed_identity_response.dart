// ignore_for_file: unused_element, unnecessary_cast


/// User Assigned Managed Identity
class UserAssignedManagedIdentityResponse {
  /// The client ID.
  final String clientId;
  /// The principal ID.
  final String principalId;

  /// Creates a new [UserAssignedManagedIdentityResponse].
  /// [clientId] The client ID.
  /// [principalId] The principal ID.
  UserAssignedManagedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

