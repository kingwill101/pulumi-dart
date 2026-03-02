// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of key vault.
class KeyVaultPropertiesResponse {
  /// This is a read only property that represents the expiration time of the current version of the customer managed key used for encryption.
  final pulumi.Input<String> currentVersionedKeyExpirationTimestamp;
  /// The object identifier of the current versioned Key Vault Key in use.
  final pulumi.Input<String> currentVersionedKeyIdentifier;
  /// The name of KeyVault key.
  final pulumi.Input<String>? keyName;
  /// The Uri of KeyVault.
  final pulumi.Input<String>? keyVaultUri;
  /// The version of KeyVault key.
  final pulumi.Input<String>? keyVersion;
  /// Timestamp of last rotation of the Key Vault Key.
  final pulumi.Input<String> lastKeyRotationTimestamp;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [currentVersionedKeyExpirationTimestamp] This is a read only property that represents the expiration time of the current version of the customer managed key used for encryption.
  /// [currentVersionedKeyIdentifier] The object identifier of the current versioned Key Vault Key in use.
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  /// [lastKeyRotationTimestamp] Timestamp of last rotation of the Key Vault Key.
  KeyVaultPropertiesResponse({
    required this.currentVersionedKeyExpirationTimestamp,
    required this.currentVersionedKeyIdentifier,
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
    required this.lastKeyRotationTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersionedKeyExpirationTimestamp': currentVersionedKeyExpirationTimestamp,
      'currentVersionedKeyIdentifier': currentVersionedKeyIdentifier,
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      currentVersionedKeyExpirationTimestamp: (map['currentVersionedKeyExpirationTimestamp'] as String).input(),
      currentVersionedKeyIdentifier: (map['currentVersionedKeyIdentifier'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri']! as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion']! as String).input(),
      lastKeyRotationTimestamp: (map['lastKeyRotationTimestamp'] as String).input(),
    );
  }
}

