// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when authType is servicePrincipal secret
class ServicePrincipalSecretAuthInfo {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final String? authMode;
  /// The authentication type.
  /// Expected value is 'servicePrincipalSecret'.
  final String authType;
  /// ServicePrincipal application clientId for servicePrincipal auth.
  final String clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final String? deleteOrUpdateBehavior;
  /// Principal Id for servicePrincipal auth.
  final String principalId;
  /// Optional, this value specifies the Azure roles to be assigned. Automatically
  final List<String>? roles;
  /// Secret for servicePrincipal auth.
  final String secret;
  /// Username created in the database which is mapped to a user in AAD.
  final String? userName;

  /// Creates a new [ServicePrincipalSecretAuthInfo].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] ServicePrincipal application clientId for servicePrincipal auth.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [principalId] Principal Id for servicePrincipal auth.
  /// [roles] Optional, this value specifies the Azure roles to be assigned. Automatically
  /// [secret] Secret for servicePrincipal auth.
  /// [userName] Username created in the database which is mapped to a user in AAD.
  ServicePrincipalSecretAuthInfo({
    this.authMode,
    required this.authType,
    required this.clientId,
    this.deleteOrUpdateBehavior,
    required this.principalId,
    this.roles,
    required this.secret,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'clientId': clientId,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'principalId': principalId,
      'roles': ?roles,
      'secret': secret,
      'userName': ?userName,
    };
  }

  factory ServicePrincipalSecretAuthInfo.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalSecretAuthInfo(
      authMode: map['authMode'] == null ? null : map['authMode'] as String,
      authType: map['authType'] as String,
      clientId: map['clientId'] as String,
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : map['deleteOrUpdateBehavior'] as String,
      principalId: map['principalId'] as String,
      roles: map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
      secret: map['secret'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

