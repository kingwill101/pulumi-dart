// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity_response.dart';
import 'encryption_services_response.dart';
import 'key_vault_properties_response.dart';

/// The encryption settings on the storage account.
class EncryptionResponse {
  /// The identity to be used with service-side encryption at rest.
  final pulumi.Input<EncryptionIdentityResponse>? encryptionIdentity;

  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  final pulumi.Input<String>? keySource;

  /// Properties provided by key vault.
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;

  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  final pulumi.Input<bool>? requireInfrastructureEncryption;

  /// List of services which support encryption.
  final pulumi.Input<EncryptionServicesResponse>? services;

  /// Creates a new [EncryptionResponse].
  /// [encryptionIdentity] The identity to be used with service-side encryption at rest.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
  /// [keyVaultProperties] Properties provided by key vault.
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  /// [services] List of services which support encryption.
  EncryptionResponse({
    this.encryptionIdentity,
    this.keySource,
    this.keyVaultProperties,
    this.requireInfrastructureEncryption,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionIdentityResponse,
            Map<String, dynamic>
          >(encryptionIdentity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultPropertiesResponse,
            Map<String, dynamic>
          >(keyVaultProperties, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
      'services':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionServicesResponse,
            Map<String, dynamic>
          >(services, (value) => value.toMap()),
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      encryptionIdentity: (() {
        final guardedValue = map['encryptionIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionIdentityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keySource: (() {
        final guardedValue = map['keySource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultProperties: (() {
        final guardedValue = map['keyVaultProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requireInfrastructureEncryption: (() {
        final guardedValue = map['requireInfrastructureEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      services: (() {
        final guardedValue = map['services'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionServicesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
