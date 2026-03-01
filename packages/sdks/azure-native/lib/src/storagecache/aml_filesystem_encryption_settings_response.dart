// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_response.dart';

/// AML file system encryption settings.
class AmlFilesystemEncryptionSettingsResponse {
  /// Specifies the location of the encryption key in Key Vault.
  final KeyVaultKeyReferenceResponse? keyEncryptionKey;

  /// Creates a new [AmlFilesystemEncryptionSettingsResponse].
  /// [keyEncryptionKey] Specifies the location of the encryption key in Key Vault.
  AmlFilesystemEncryptionSettingsResponse({
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory AmlFilesystemEncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemEncryptionSettingsResponse(
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultKeyReferenceResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

