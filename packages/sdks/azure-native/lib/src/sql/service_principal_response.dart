// ignore_for_file: unused_element, unnecessary_cast


/// The managed instance's service principal configuration for a resource.
class ServicePrincipalResponse {
  /// The Azure Active Directory application client id.
  final String clientId;
  /// The Azure Active Directory application object id.
  final String principalId;
  /// The Azure Active Directory tenant id.
  final String tenantId;
  /// Service principal type.
  final String? type;

  /// Creates a new [ServicePrincipalResponse].
  /// [clientId] The Azure Active Directory application client id.
  /// [principalId] The Azure Active Directory application object id.
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] Service principal type.
  ServicePrincipalResponse({
    required this.clientId,
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

