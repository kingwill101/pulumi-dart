// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConfigurationKey resources.
class ConfigurationKeyState {
  /// Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configurationStoreId;
  /// The content type of the App Configuration Key. This should only be set when type is set to `kv`.
  final pulumi.Input<String>? contentType;
  /// (Optional) The ETag of the key.
  final pulumi.Input<String>? etag;
  /// The name of the App Configuration Key to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? key;
  /// The label of the App Configuration Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? label;
  /// Should this App Configuration Key be Locked to prevent changes?
  final pulumi.Input<bool>? locked;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/). Defaults to `kv`.
  final pulumi.Input<String>? type;
  /// The value of the App Configuration Key. This should only be set when type is set to `kv`.
  ///
  /// > **Note:** `value` and `vault_key_reference` are mutually exclusive.
  final pulumi.Input<String>? value;
  /// The ID of the vault secret this App Configuration Key refers to. This should only be set when `type` is set to `vault`.
  ///
  /// > **Note:** `vault_key_reference` and `value` are mutually exclusive.
  ///
  /// > **Note:** When setting the `vault_key_reference` using the `id` will pin the value to specific version of the secret, to reference latest secret value use `versionless_id`
  final pulumi.Input<String>? vaultKeyReference;

  /// Creates a new [ConfigurationKeyState].
  /// [configurationStoreId] Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  /// [contentType] The content type of the App Configuration Key. This should only be set when type is set to `kv`.
  /// [etag] (Optional) The ETag of the key.
  /// [key] The name of the App Configuration Key to create. Changing this forces a new resource to be created.
  /// [label] The label of the App Configuration Key. Changing this forces a new resource to be created.
  /// [locked] Should this App Configuration Key be Locked to prevent changes?
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/). Defaults to `kv`.
  /// [value] The value of the App Configuration Key. This should only be set when type is set to `kv`.
  /// [vaultKeyReference] The ID of the vault secret this App Configuration Key refers to. This should only be set when `type` is set to `vault`.
  ConfigurationKeyState({
    this.configurationStoreId,
    this.contentType,
    this.etag,
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
      'key': ?key,
      'label': ?label,
      'locked': ?locked,
      'tags': ?tags,
      'type': ?type,
      'value': ?value,
      'vaultKeyReference': ?vaultKeyReference,
    };
  }

  factory ConfigurationKeyState.fromMap(Map<String, dynamic> map) {
    return ConfigurationKeyState(
      configurationStoreId: map['configurationStoreId'] == null ? null : (map['configurationStoreId'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      locked: map['locked'] == null ? null : (map['locked'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      vaultKeyReference: map['vaultKeyReference'] == null ? null : (map['vaultKeyReference'] as String).input(),
    );
  }
}

