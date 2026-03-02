// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is servicePrincipal certificate
class ServicePrincipalCertificateAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'servicePrincipalCertificate'.
  final pulumi.Input<String> authType;
  /// ServicePrincipal certificate for servicePrincipal auth.
  final pulumi.Input<String> certificate;
  /// Application clientId for servicePrincipal auth.
  final pulumi.Input<String> clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Principal Id for servicePrincipal auth.
  final pulumi.Input<String> principalId;
  /// Optional, this value specifies the Azure roles to be assigned. Automatically
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [ServicePrincipalCertificateAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [certificate] ServicePrincipal certificate for servicePrincipal auth.
  /// [clientId] Application clientId for servicePrincipal auth.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [principalId] Principal Id for servicePrincipal auth.
  /// [roles] Optional, this value specifies the Azure roles to be assigned. Automatically
  ServicePrincipalCertificateAuthInfoResponse({
    this.authMode,
    required this.authType,
    required this.certificate,
    required this.clientId,
    this.deleteOrUpdateBehavior,
    required this.principalId,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'certificate': certificate,
      'clientId': clientId,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'principalId': principalId,
      'roles': ?roles,
    };
  }

  factory ServicePrincipalCertificateAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalCertificateAuthInfoResponse(
      authMode: map['authMode'] == null ? null : (map['authMode']! as String).input(),
      authType: (map['authType'] as String).input(),
      certificate: (map['certificate'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior']! as String).input(),
      principalId: (map['principalId'] as String).input(),
      roles: map['roles'] == null ? null : ((map['roles']! as List).cast<String>()).input(),
    );
  }
}

