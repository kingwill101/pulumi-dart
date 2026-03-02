// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference_source_vault.dart';

/// Describes a reference to key vault key.
class KeyVaultKeyReference {
  /// The URL referencing a key encryption key in key vault.
  final pulumi.Input<String> keyUrl;
  /// Describes a resource Id to source key vault.
  final pulumi.Input<KeyVaultKeyReferenceSourceVault> sourceVault;

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
      'sourceVault': pulumi.Input.mapInputValue<KeyVaultKeyReferenceSourceVault, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyVaultKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReference(
      keyUrl: (map['keyUrl'] as String).input(),
      sourceVault: (KeyVaultKeyReferenceSourceVault.fromMap((map['sourceVault'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

