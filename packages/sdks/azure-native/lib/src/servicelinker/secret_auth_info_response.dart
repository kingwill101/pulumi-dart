// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_reference_secret_info_response.dart';

/// The authentication info when authType is secret
class SecretAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final String? authMode;
  /// The authentication type.
  /// Expected value is 'secret'.
  final String authType;
  /// Username or account name for secret auth.
  final String? name;
  /// Password or key vault secret for secret auth.
  final KeyVaultSecretReferenceSecretInfoResponse? secretInfo;

  /// Creates a new [SecretAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [name] Username or account name for secret auth.
  /// [secretInfo] Password or key vault secret for secret auth.
  SecretAuthInfoResponse({
    this.authMode,
    required this.authType,
    this.name,
    this.secretInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'name': ?name,
      'secretInfo': ?secretInfo == null ? null : secretInfo!.toMap(),
    };
  }

  factory SecretAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return SecretAuthInfoResponse(
      authMode: map['authMode'] == null ? null : map['authMode'] as String,
      authType: map['authType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      secretInfo: map['secretInfo'] == null ? null : KeyVaultSecretReferenceSecretInfoResponse.fromMap((map['secretInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

