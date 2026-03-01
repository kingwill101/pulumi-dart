// ignore_for_file: unused_element, unnecessary_cast


class AdditionalAuthorizationResponse {
  final String? applicationId;
  final String? roleDefinitionId;

  /// Creates a new [AdditionalAuthorizationResponse].
  /// [applicationId] Optional.
  /// [roleDefinitionId] Optional.
  AdditionalAuthorizationResponse({
    this.applicationId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory AdditionalAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthorizationResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
    );
  }
}

