// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference_response.dart';

/// Cache encryption settings.
class CacheEncryptionSettingsResponse {
  /// Specifies the location of the key encryption key in key vault.
  final pulumi.Input<KeyVaultKeyReferenceResponse>? keyEncryptionKey;
  /// Specifies whether the service will automatically rotate to the newest version of the key in the key vault.
  final pulumi.Input<bool>? rotationToLatestKeyVersionEnabled;

  /// Creates a new [CacheEncryptionSettingsResponse].
  /// [keyEncryptionKey] Specifies the location of the key encryption key in key vault.
  /// [rotationToLatestKeyVersionEnabled] Specifies whether the service will automatically rotate to the newest version of the key in the key vault.
  CacheEncryptionSettingsResponse({
    this.keyEncryptionKey,
    this.rotationToLatestKeyVersionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyReferenceResponse, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
      'rotationToLatestKeyVersionEnabled': ?rotationToLatestKeyVersionEnabled,
    };
  }

  factory CacheEncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheEncryptionSettingsResponse(
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultKeyReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rotationToLatestKeyVersionEnabled: (() { final guardedValue = map['rotationToLatestKeyVersionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

