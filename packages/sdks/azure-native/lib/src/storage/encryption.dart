// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity.dart';
import 'encryption_services.dart';
import 'key_vault_properties.dart';

/// The encryption settings on the storage account.
class Encryption {
  /// The identity to be used with service-side encryption at rest.
  final pulumi.Input<EncryptionIdentity?>? encryptionIdentity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  final pulumi.Input<dynamic>? keySource;
  /// Properties provided by key vault.
  final pulumi.Input<KeyVaultProperties?>? keyVaultProperties;
  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  final pulumi.Input<bool?>? requireInfrastructureEncryption;
  /// List of services which support encryption.
  final pulumi.Input<EncryptionServices?>? services;

  /// Creates a new [Encryption].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  /// [keyVaultProperties] Properties provided by key vault.
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  /// [services] List of services which support encryption.
  Encryption({
    this.encryptionIdentity,
    pulumi.Input<dynamic>? keySource,
    this.keyVaultProperties,
    this.requireInfrastructureEncryption,
    this.services,
  }) : keySource = keySource ?? pulumi.Input.fromValue('Microsoft.Storage');

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
      encryptionIdentity: (() { final guardedValue = map['encryptionIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireInfrastructureEncryption: (() { final guardedValue = map['requireInfrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionServices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
