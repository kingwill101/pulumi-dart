// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// Properties to configure Encryption
class EncryptionResponse {
  /// Enumerates the possible value of keySource for Encryption
  final String? keySource;
  /// Properties of KeyVault
  final List<KeyVaultPropertiesResponse>? keyVaultProperties;
  /// Enable Infrastructure Encryption (Double Encryption)
  final bool? requireInfrastructureEncryption;

  /// Creates a new [EncryptionResponse].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [requireInfrastructureEncryption] Enable Infrastructure Encryption (Double Encryption)
  EncryptionResponse({
    this.keySource,
    this.keyVaultProperties,
    this.requireInfrastructureEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : pulumi.Input.encodeList<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties!, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : pulumi.Input.decodeList<KeyVaultPropertiesResponse>(map['keyVaultProperties'], (value) => KeyVaultPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : map['requireInfrastructureEncryption'] as bool,
    );
  }
}

