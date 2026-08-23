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
  const EncryptionScopeKeyVaultPropertiesResponse({
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
      currentVersionedKeyIdentifier: pulumi.Input.fromValue(map['currentVersionedKeyIdentifier'] as String),
      keyUri: (() { final guardedValue = map['keyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastKeyRotationTimestamp: pulumi.Input.fromValue(map['lastKeyRotationTimestamp'] as String),
    );
  }
}
