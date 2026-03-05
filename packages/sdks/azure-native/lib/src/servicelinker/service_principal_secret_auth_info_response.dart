// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is servicePrincipal secret
class ServicePrincipalSecretAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'servicePrincipalSecret'.
  final pulumi.Input<String> authType;
  /// ServicePrincipal application clientId for servicePrincipal auth.
  final pulumi.Input<String> clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Principal Id for servicePrincipal auth.
  final pulumi.Input<String> principalId;
  /// Optional, this value specifies the Azure roles to be assigned. Automatically
  final pulumi.Input<List<String>>? roles;
  /// Secret for servicePrincipal auth.
  final pulumi.Input<String> secret;
  /// Username created in the database which is mapped to a user in AAD.
  final pulumi.Input<String>? userName;

  /// Creates a new [ServicePrincipalSecretAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] ServicePrincipal application clientId for servicePrincipal auth.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [principalId] Principal Id for servicePrincipal auth.
  /// [roles] Optional, this value specifies the Azure roles to be assigned. Automatically
  /// [secret] Secret for servicePrincipal auth.
  /// [userName] Username created in the database which is mapped to a user in AAD.
  ServicePrincipalSecretAuthInfoResponse({
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

  factory ServicePrincipalSecretAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalSecretAuthInfoResponse(
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      deleteOrUpdateBehavior: (() { final guardedValue = map['deleteOrUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

