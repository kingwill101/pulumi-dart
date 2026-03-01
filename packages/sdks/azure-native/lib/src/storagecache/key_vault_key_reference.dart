// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_source_vault.dart';

/// Describes a reference to key vault key.
class KeyVaultKeyReference {
  /// The URL referencing a key encryption key in key vault.
  final String keyUrl;
  /// Describes a resource Id to source key vault.
  final KeyVaultKeyReferenceSourceVault sourceVault;

  /// Creates a new [KeyVaultKeyReference].
  /// [keyUrl] The URL referencing a key encryption key in key vault.
  /// [sourceVault] Describes a resource Id to source key vault.
  KeyVaultKeyReference({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReference(
      keyUrl: map['keyUrl'] as String,
      sourceVault: KeyVaultKeyReferenceSourceVault.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

