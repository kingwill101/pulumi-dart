// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An option to store secret value in secure place
class SecretStoreResponse {
  /// The key vault id to store secret
  final pulumi.Input<String>? keyVaultId;
  /// The key vault secret name to store secret, only valid when storing one secret
  final pulumi.Input<String>? keyVaultSecretName;

  /// Creates a new [SecretStoreResponse].
  /// [keyVaultId] The key vault id to store secret
  /// [keyVaultSecretName] The key vault secret name to store secret, only valid when storing one secret
  SecretStoreResponse({
    this.keyVaultId,
    this.keyVaultSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
    };
  }

  factory SecretStoreResponse.fromMap(Map<String, dynamic> map) {
    return SecretStoreResponse(
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : (map['keyVaultSecretName']! as String).input(),
    );
  }
}

