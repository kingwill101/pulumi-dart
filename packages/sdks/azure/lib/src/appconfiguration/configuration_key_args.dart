// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_configuration_key_configuration_key_args_doc}
/// The set of arguments for ConfigurationKey.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_configuration_key_configuration_key_args_doc}
class ConfigurationKeyArgs {
  /// Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> configurationStoreId;
  /// The content type of the App Configuration Key. This should only be set when type is set to `kv`.
  final pulumi.Input<String>? contentType;
  /// (Optional) The ETag of the key.
  final pulumi.Input<String>? etag;
  /// The name of the App Configuration Key to create. Changing this forces a new resource to be created.
  final pulumi.Input<String> key;
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
  /// &gt; **Note:** `value` and `vault_key_reference` are mutually exclusive.
  final pulumi.Input<String>? value;
  /// The ID of the vault secret this App Configuration Key refers to. This should only be set when `type` is set to `vault`.
  ///
  /// &gt; **Note:** `vault_key_reference` and `value` are mutually exclusive.
  ///
  /// &gt; **Note:** When setting the `vault_key_reference` using the `id` will pin the value to specific version of the secret, to reference latest secret value use `versionless_id`
  final pulumi.Input<String>? vaultKeyReference;

  /// Creates a new [ConfigurationKeyArgs].
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
  const ConfigurationKeyArgs({
    required this.configurationStoreId,
    this.contentType,
    this.etag,
    required this.key,
    this.label,
    this.locked,
    this.tags,
    this.type,
    this.value,
    this.vaultKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'contentType': ?contentType,
      'etag': ?etag,
      'key': key,
      'label': ?label,
      'locked': ?locked,
      'tags': ?tags,
      'type': ?type,
      'value': ?value,
      'vaultKeyReference': ?vaultKeyReference,
    };
  }

  factory ConfigurationKeyArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationKeyArgs(
      configurationStoreId: pulumi.Input.fromValue(map['configurationStoreId'] as String),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultKeyReference: (() { final guardedValue = map['vaultKeyReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

