// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_reference.dart';

/// Azure Key Vault parameter reference.
class KeyVaultParameterReference {
  /// Azure Key Vault reference.
  final pulumi.Input<KeyVaultReference> keyVault;
  /// Azure Key Vault secret name.
  final pulumi.Input<String> secretName;
  /// Azure Key Vault secret version.
  final pulumi.Input<String>? secretVersion;

  /// Creates a new [KeyVaultParameterReference].
  /// [keyVault] Azure Key Vault reference.
  /// [secretName] Azure Key Vault secret name.
  /// [secretVersion] Azure Key Vault secret version.
  const KeyVaultParameterReference({
    required this.keyVault,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': pulumi.Input.mapInputValue<KeyVaultReference, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory KeyVaultParameterReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultParameterReference(
      keyVault: pulumi.Input.fromValue(KeyVaultReference.fromMap((map['keyVault']! as Map).cast<String, dynamic>())),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
