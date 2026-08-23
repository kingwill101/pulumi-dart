// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_reference_with_status_response.dart';

/// Server farm registry adapter configuration.
class RegistryAdapterResponse {
  /// Key vault reference to the value that will be placed in the registry location
  final pulumi.Input<KeyVaultReferenceWithStatusResponse>? keyVaultSecretReference;
  /// Registry key for the adapter.
  final pulumi.Input<String>? registryKey;
  /// Type of the registry adapter.
  final pulumi.Input<String>? type;

  /// Creates a new [RegistryAdapterResponse].
  /// [keyVaultSecretReference] Key vault reference to the value that will be placed in the registry location
  /// [registryKey] Registry key for the adapter.
  /// [type] Type of the registry adapter.
  const RegistryAdapterResponse({
    this.keyVaultSecretReference,
    this.registryKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultSecretReference': ?pulumi.Input.mapOptionalInputValue<KeyVaultReferenceWithStatusResponse, Map<String, dynamic>>(keyVaultSecretReference, (value) => value.toMap()),
      'registryKey': ?registryKey,
      'type': ?type,
    };
  }

  factory RegistryAdapterResponse.fromMap(Map<String, dynamic> map) {
    return RegistryAdapterResponse(
      keyVaultSecretReference: (() { final guardedValue = map['keyVaultSecretReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultReferenceWithStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryKey: (() { final guardedValue = map['registryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
