// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference.dart';

/// AML file system encryption settings.
class AmlFilesystemEncryptionSettings {
  /// Specifies the location of the encryption key in Key Vault.
  final pulumi.Input<KeyVaultKeyReference>? keyEncryptionKey;

  /// Creates a new [AmlFilesystemEncryptionSettings].
  /// [keyEncryptionKey] Specifies the location of the encryption key in Key Vault.
  const AmlFilesystemEncryptionSettings({
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyReference, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory AmlFilesystemEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemEncryptionSettings(
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultKeyReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
