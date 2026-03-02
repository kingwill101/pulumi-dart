// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference_secret_info_response.dart';

/// The authentication info when authType is secret
class SecretAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'secret'.
  final pulumi.Input<String> authType;
  /// Username or account name for secret auth.
  final pulumi.Input<String>? name;
  /// Password or key vault secret for secret auth.
  final pulumi.Input<KeyVaultSecretReferenceSecretInfoResponse>? secretInfo;

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
      'secretInfo': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReferenceSecretInfoResponse, Map<String, dynamic>>(secretInfo, (value) => value.toMap()),
    };
  }

  factory SecretAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return SecretAuthInfoResponse(
      authMode: map['authMode'] == null ? null : (map['authMode']! as String).input(),
      authType: (map['authType'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      secretInfo: map['secretInfo'] == null ? null : (KeyVaultSecretReferenceSecretInfoResponse.fromMap((map['secretInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

