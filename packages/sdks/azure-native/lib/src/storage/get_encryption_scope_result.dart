// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_scope_key_vault_properties_response.dart';

/// Result data returned by getEncryptionScope.
class GetEncryptionScopeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation date and time of the encryption scope in UTC.
  final String creationTime;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
  final EncryptionScopeKeyVaultPropertiesResponse? keyVaultProperties;
  /// Gets the last modification date and time of the encryption scope in UTC.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  final bool? requireInfrastructureEncryption;
  /// The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
  final String? source;
  /// The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
  final String? state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEncryptionScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation date and time of the encryption scope in UTC.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keyVaultProperties] The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
  /// [lastModifiedTime] Gets the last modification date and time of the encryption scope in UTC.
  /// [name] The name of the resource
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  /// [source] The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
  /// [state] The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEncryptionScopeResult({
    required this.azureApiVersion,
    required this.creationTime,
    required this.id,
    this.keyVaultProperties,
    required this.lastModifiedTime,
    required this.name,
    this.requireInfrastructureEncryption,
    this.source,
    this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'id': id,
      'keyVaultProperties': ?keyVaultProperties?.toMap(),
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
      'source': ?source,
      'state': ?state,
      'type': type,
    };
  }

  factory GetEncryptionScopeResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return EncryptionScopeKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      requireInfrastructureEncryption: (() { final guardedValue = map['requireInfrastructureEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

