// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity.dart';
import 'encryption_services.dart';
import 'key_vault_properties.dart';

/// The encryption settings on the storage account.
class Encryption {
  /// The identity to be used with service-side encryption at rest.
  final pulumi.Input<EncryptionIdentity>? encryptionIdentity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  final pulumi.Input<String>? keySource;
  /// Properties provided by key vault.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;
  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  final pulumi.Input<bool>? requireInfrastructureEncryption;
  /// List of services which support encryption.
  final pulumi.Input<EncryptionServices>? services;

  /// Creates a new [Encryption].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  /// [keyVaultProperties] Properties provided by key vault.
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  /// [services] List of services which support encryption.
  Encryption({
    this.encryptionIdentity,
    this.keySource,
    this.keyVaultProperties,
    this.requireInfrastructureEncryption,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionIdentity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentity, Map<String, dynamic>>(encryptionIdentity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
      'services': ?pulumi.Input.mapOptionalInputValue<EncryptionServices, Map<String, dynamic>>(services, (value) => value.toMap()),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      encryptionIdentity: map['encryptionIdentity'] == null ? null : (EncryptionIdentity.fromMap((map['encryptionIdentity'] as Map).cast<String, dynamic>())).input(),
      keySource: map['keySource'] == null ? null : (map['keySource'] as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : (map['requireInfrastructureEncryption'] as bool).input(),
      services: map['services'] == null ? null : (EncryptionServices.fromMap((map['services'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

