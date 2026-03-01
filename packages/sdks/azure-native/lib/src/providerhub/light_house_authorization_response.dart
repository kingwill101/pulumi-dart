// ignore_for_file: unused_element, unnecessary_cast


class LightHouseAuthorizationResponse {
  /// The principal id.
  final String principalId;
  /// The role definition id.
  final String roleDefinitionId;

  /// Creates a new [LightHouseAuthorizationResponse].
  /// [principalId] The principal id.
  /// [roleDefinitionId] The role definition id.
  LightHouseAuthorizationResponse({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory LightHouseAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return LightHouseAuthorizationResponse(
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

