// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InteractiveQueryClusterDiskEncryption {
  /// This is an algorithm identifier for encryption. Possible values are `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`.
  final pulumi.Input<String>? encryptionAlgorithm;
  /// This is indicator to show whether resource disk encryption is enabled.
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// The ID of the key vault key.
  final pulumi.Input<String>? keyVaultKeyId;
  /// This is the resource ID of Managed Identity used to access the key vault.
  final pulumi.Input<String>? keyVaultManagedIdentityId;

  /// Creates a new [InteractiveQueryClusterDiskEncryption].
  /// [encryptionAlgorithm] This is an algorithm identifier for encryption. Possible values are `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`.
  /// [encryptionAtHostEnabled] This is indicator to show whether resource disk encryption is enabled.
  /// [keyVaultKeyId] The ID of the key vault key.
  /// [keyVaultManagedIdentityId] This is the resource ID of Managed Identity used to access the key vault.
  InteractiveQueryClusterDiskEncryption({
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

  factory InteractiveQueryClusterDiskEncryption.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterDiskEncryption(
      encryptionAlgorithm: map['encryptionAlgorithm'] == null ? null : (map['encryptionAlgorithm'] as String).input(),
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : (map['encryptionAtHostEnabled'] as bool).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      keyVaultManagedIdentityId: map['keyVaultManagedIdentityId'] == null ? null : (map['keyVaultManagedIdentityId'] as String).input(),
    );
  }
}

