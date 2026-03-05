// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfigurationKey.
class GetConfigurationKeyResult {
  final String configurationStoreId;
  /// The content type of the App Configuration Key.
  final String contentType;
  /// The ETag of the key.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String key;
  final String? label;
  /// Is this App Configuration Key be Locked to prevent changes.
  final bool locked;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/).
  final String type;
  /// The value of the App Configuration Key.
  final String value;
  /// The ID of the vault secret this App Configuration Key refers to, when `type` is `vault`.
  final String vaultKeyReference;

  /// Creates a new [GetConfigurationKeyResult].
  /// [configurationStoreId] Required.
  /// [contentType] The content type of the App Configuration Key.
  /// [etag] The ETag of the key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] Required.
  /// [label] Optional.
  /// [locked] Is this App Configuration Key be Locked to prevent changes.
  /// [tags] A mapping of tags assigned to the resource.
  /// [type] The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/).
  /// [value] The value of the App Configuration Key.
  /// [vaultKeyReference] The ID of the vault secret this App Configuration Key refers to, when `type` is `vault`.
  GetConfigurationKeyResult({
    required this.configurationStoreId,
    required this.contentType,
    required this.etag,
    required this.id,
    required this.key,
    this.label,
    required this.locked,
    required this.tags,
    required this.type,
    required this.value,
    required this.vaultKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'contentType': contentType,
      'etag': etag,
      'id': id,
      'key': key,
      'label': ?label,
      'locked': locked,
      'tags': tags,
      'type': type,
      'value': value,
      'vaultKeyReference': vaultKeyReference,
    };
  }

  factory GetConfigurationKeyResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeyResult(
      configurationStoreId: map['configurationStoreId'] as String,
      contentType: map['contentType'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      key: map['key'] as String,
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locked: map['locked'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      value: map['value'] as String,
      vaultKeyReference: map['vaultKeyReference'] as String,
    );
  }
}

