// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfigurationKey.
class GetConfigurationKeyResult {
  final String? configurationStoreId;
  /// The content type of the App Configuration Key.
  final String? contentType;
  /// The ETag of the key.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? key;
  final String? label;
  /// Is this App Configuration Key be Locked to prevent changes.
  final bool? locked;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/).
  final String? type;
  /// The value of the App Configuration Key.
  final String? value;
  /// The ID of the vault secret this App Configuration Key refers to, when `type` is `vault`.
  final String? vaultKeyReference;

  /// Creates a new [GetConfigurationKeyResult].
  /// [configurationStoreId] Optional.
  /// [contentType] The content type of the App Configuration Key.
  /// [etag] The ETag of the key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] Optional.
  /// [label] Optional.
  /// [locked] Is this App Configuration Key be Locked to prevent changes.
  /// [tags] A mapping of tags assigned to the resource.
  /// [type] The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/).
  /// [value] The value of the App Configuration Key.
  /// [vaultKeyReference] The ID of the vault secret this App Configuration Key refers to, when `type` is `vault`.
  const GetConfigurationKeyResult({
    this.configurationStoreId,
    this.contentType,
    this.etag,
    this.id,
    this.key,
    this.label,
    this.locked,
    this.tags,
    this.type,
    this.value,
    this.vaultKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': ?configurationStoreId,
      'contentType': ?contentType,
      'etag': ?etag,
      'id': ?id,
      'key': ?key,
      'label': ?label,
      'locked': ?locked,
      'tags': ?tags,
      'type': ?type,
      'value': ?value,
      'vaultKeyReference': ?vaultKeyReference,
    };
  }

  factory GetConfigurationKeyResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeyResult(
      configurationStoreId: (() { final guardedValue = map['configurationStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vaultKeyReference: (() { final guardedValue = map['vaultKeyReference']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
