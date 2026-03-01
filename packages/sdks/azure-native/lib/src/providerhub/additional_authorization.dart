// ignore_for_file: unused_element, unnecessary_cast


class AdditionalAuthorization {
  final String? applicationId;
  final String? roleDefinitionId;

  /// Creates a new [AdditionalAuthorization].
  /// [applicationId] Optional.
  /// [roleDefinitionId] Optional.
  AdditionalAuthorization({
    this.applicationId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory AdditionalAuthorization.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthorization(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
    );
  }
}

