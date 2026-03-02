// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// Properties to configure Encryption
class EncryptionResponse {
  /// Enumerates the possible value of keySource for Encryption
  final pulumi.Input<String>? keySource;
  /// Properties of KeyVault
  final pulumi.Input<List<KeyVaultPropertiesResponse>>? keyVaultProperties;
  /// Enable Infrastructure Encryption (Double Encryption)
  final pulumi.Input<bool>? requireInfrastructureEncryption;

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
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<List<KeyVaultPropertiesResponse>, List<Map<String, dynamic>>>(keyVaultProperties, (value) => pulumi.Input.encodeList<KeyVaultPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      keySource: map['keySource'] == null ? null : (map['keySource']! as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (pulumi.Input.decodeList<KeyVaultPropertiesResponse>(map['keyVaultProperties']!, (value) => KeyVaultPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : (map['requireInfrastructureEncryption']! as bool).input(),
    );
  }
}

