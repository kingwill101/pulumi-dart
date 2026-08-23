// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An option to store secret value in secure place
class SecretStore {
  /// The key vault id to store secret
  final pulumi.Input<String>? keyVaultId;
  /// The key vault secret name to store secret, only valid when storing one secret
  final pulumi.Input<String>? keyVaultSecretName;

  /// Creates a new [SecretStore].
  /// [keyVaultId] The key vault id to store secret
  /// [keyVaultSecretName] The key vault secret name to store secret, only valid when storing one secret
  const SecretStore({
    this.keyVaultId,
    this.keyVaultSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
    };
  }

  factory SecretStore.fromMap(Map<String, dynamic> map) {
    return SecretStore(
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSecretName: (() { final guardedValue = map['keyVaultSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
