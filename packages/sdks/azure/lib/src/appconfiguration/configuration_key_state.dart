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
    pulumi.Output<String>? configurationStoreId,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? key,
    pulumi.Output<String>? label,
    pulumi.Output<bool>? locked,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? value,
    pulumi.Output<String>? vaultKeyReference,
  }) :
      configurationStoreId = pulumi.Input.asOptionalInput<String>(configurationStoreId),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      key = pulumi.Input.asOptionalInput<String>(key),
      label = pulumi.Input.asOptionalInput<String>(label),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value),
      vaultKeyReference = pulumi.Input.asOptionalInput<String>(vaultKeyReference);

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
      configurationStoreId: map['configurationStoreId'] == null ? null : pulumi.Output.create<String>(map['configurationStoreId'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      vaultKeyReference: map['vaultKeyReference'] == null ? null : pulumi.Output.create<String>(map['vaultKeyReference'] as String),
    );
  }
}

