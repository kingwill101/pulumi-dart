// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_identity.dart';
import 'encryption_services.dart';
import 'key_vault_properties.dart';

/// The encryption settings on the storage account.
class Encryption {
  /// The identity to be used with service-side encryption at rest.
  final EncryptionIdentity? encryptionIdentity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  final String? keySource;
  /// Properties provided by key vault.
  final KeyVaultProperties? keyVaultProperties;
  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  final bool? requireInfrastructureEncryption;
  /// List of services which support encryption.
  final EncryptionServices? services;

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
      'encryptionIdentity': ?encryptionIdentity == null ? null : encryptionIdentity!.toMap(),
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
      'services': ?services == null ? null : services!.toMap(),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      encryptionIdentity: map['encryptionIdentity'] == null ? null : EncryptionIdentity.fromMap((map['encryptionIdentity'] as Map).cast<String, dynamic>()),
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : map['requireInfrastructureEncryption'] as bool,
      services: map['services'] == null ? null : EncryptionServices.fromMap((map['services'] as Map).cast<String, dynamic>()),
    );
  }
}

