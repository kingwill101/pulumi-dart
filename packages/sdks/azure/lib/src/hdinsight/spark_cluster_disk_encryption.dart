// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterDiskEncryption {
  /// This is an algorithm identifier for encryption. Possible values are `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`.
  final pulumi.Input<String>? encryptionAlgorithm;
  /// This is indicator to show whether resource disk encryption is enabled.
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// The ID of the key vault key.
  final pulumi.Input<String>? keyVaultKeyId;
  /// This is the resource ID of Managed Identity used to access the key vault.
  final pulumi.Input<String>? keyVaultManagedIdentityId;

  /// Creates a new [SparkClusterDiskEncryption].
  /// [encryptionAlgorithm] This is an algorithm identifier for encryption. Possible values are `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`.
  /// [encryptionAtHostEnabled] This is indicator to show whether resource disk encryption is enabled.
  /// [keyVaultKeyId] The ID of the key vault key.
  /// [keyVaultManagedIdentityId] This is the resource ID of Managed Identity used to access the key vault.
  const SparkClusterDiskEncryption({
    this.encryptionAlgorithm,
    this.encryptionAtHostEnabled,
    this.keyVaultKeyId,
    this.keyVaultManagedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'keyVaultManagedIdentityId': ?keyVaultManagedIdentityId,
    };
  }

  factory SparkClusterDiskEncryption.fromMap(Map<String, dynamic> map) {
    return SparkClusterDiskEncryption(
      encryptionAlgorithm: (() { final guardedValue = map['encryptionAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionAtHostEnabled: (() { final guardedValue = map['encryptionAtHostEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultManagedIdentityId: (() { final guardedValue = map['keyVaultManagedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

