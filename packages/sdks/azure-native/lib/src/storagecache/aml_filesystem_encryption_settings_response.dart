// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference_response.dart';

/// AML file system encryption settings.
class AmlFilesystemEncryptionSettingsResponse {
  /// Specifies the location of the encryption key in Key Vault.
  final pulumi.Input<KeyVaultKeyReferenceResponse>? keyEncryptionKey;

  /// Creates a new [AmlFilesystemEncryptionSettingsResponse].
  /// [keyEncryptionKey] Specifies the location of the encryption key in Key Vault.
  AmlFilesystemEncryptionSettingsResponse({
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyReferenceResponse, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory AmlFilesystemEncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemEncryptionSettingsResponse(
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : (KeyVaultKeyReferenceResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

