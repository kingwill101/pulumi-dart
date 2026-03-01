// ignore_for_file: unused_element, unnecessary_cast


/// Identity provider input.
class IdentityProviderInput {
  /// The base authority for Azure Active Directory authentication.
  final String aadAuthority;
  /// The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String applicationId;
  /// The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String audience;
  /// The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String objectId;
  /// The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final String tenantId;

  /// Creates a new [IdentityProviderInput].
  /// [aadAuthority] The base authority for Azure Active Directory authentication.
  /// [applicationId] The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [audience] The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [objectId] The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [tenantId] The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  IdentityProviderInput({
    required this.aadAuthority,
    required this.applicationId,
    required this.audience,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': aadAuthority,
      'applicationId': applicationId,
      'audience': audience,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory IdentityProviderInput.fromMap(Map<String, dynamic> map) {
    return IdentityProviderInput(
      aadAuthority: map['aadAuthority'] as String,
      applicationId: map['applicationId'] as String,
      audience: map['audience'] as String,
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

