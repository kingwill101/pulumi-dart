// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_reference_response.dart';

/// Azure Key Vault parameter reference.
class KeyVaultParameterReferenceResponse {
  /// Azure Key Vault reference.
  final pulumi.Input<KeyVaultReferenceResponse> keyVault;
  /// Azure Key Vault secret name.
  final pulumi.Input<String> secretName;
  /// Azure Key Vault secret version.
  final pulumi.Input<String?>? secretVersion;

  /// Creates a new [KeyVaultParameterReferenceResponse].
  /// [keyVault] Azure Key Vault reference.
  /// [secretName] Azure Key Vault secret name.
  /// [secretVersion] Azure Key Vault secret version.
  const KeyVaultParameterReferenceResponse({
    required this.keyVault,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': pulumi.Input.mapInputValue<KeyVaultReferenceResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory KeyVaultParameterReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultParameterReferenceResponse(
      keyVault: pulumi.Input.fromValue(KeyVaultReferenceResponse.fromMap((map['keyVault']! as Map).cast<String, dynamic>())),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
