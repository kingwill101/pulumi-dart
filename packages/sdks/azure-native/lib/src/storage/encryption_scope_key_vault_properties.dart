// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
class EncryptionScopeKeyVaultProperties {
  /// The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope.
  final pulumi.Input<String>? keyUri;

  /// Creates a new [EncryptionScopeKeyVaultProperties].
  /// [keyUri] The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope.
  EncryptionScopeKeyVaultProperties({
    this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': ?keyUri,
    };
  }

  factory EncryptionScopeKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeKeyVaultProperties(
      keyUri: map['keyUri'] == null ? null : (map['keyUri'] as String).input(),
    );
  }
}

