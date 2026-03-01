// ignore_for_file: unused_element, unnecessary_cast


/// The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
class EncryptionScopeKeyVaultPropertiesResponse {
  /// The object identifier of the current versioned Key Vault Key in use.
  final String currentVersionedKeyIdentifier;
  /// The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope.
  final String? keyUri;
  /// Timestamp of last rotation of the Key Vault Key.
  final String lastKeyRotationTimestamp;

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
      currentVersionedKeyIdentifier: map['currentVersionedKeyIdentifier'] as String,
      keyUri: map['keyUri'] == null ? null : map['keyUri'] as String,
      lastKeyRotationTimestamp: map['lastKeyRotationTimestamp'] as String,
    );
  }
}

