// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
class EncryptionScopeKeyVaultPropertiesResponse {
  /// The object identifier of the current versioned Key Vault Key in use.
  final pulumi.Input<String> currentVersionedKeyIdentifier;
  /// The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope.
  final pulumi.Input<String>? keyUri;
  /// Timestamp of last rotation of the Key Vault Key.
  final pulumi.Input<String> lastKeyRotationTimestamp;

  /// Creates a new [EncryptionScopeKeyVaultPropertiesResponse].
  /// [currentVersionedKeyIdentifier] The object identifier of the current versioned Key Vault Key in use.
  /// [keyUri] The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope.
  /// [lastKeyRotationTimestamp] Timestamp of last rotation of the Key Vault Key.
  EncryptionScopeKeyVaultPropertiesResponse({
    required this.currentVersionedKeyIdentifier,
    this.keyUri,
    required this.lastKeyRotationTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersionedKeyIdentifier': currentVersionedKeyIdentifier,
      'keyUri': ?keyUri,
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
    };
  }

  factory EncryptionScopeKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeKeyVaultPropertiesResponse(
      currentVersionedKeyIdentifier: (map['currentVersionedKeyIdentifier'] as String).input(),
      keyUri: map['keyUri'] == null ? null : (map['keyUri'] as String).input(),
      lastKeyRotationTimestamp: (map['lastKeyRotationTimestamp'] as String).input(),
    );
  }
}

