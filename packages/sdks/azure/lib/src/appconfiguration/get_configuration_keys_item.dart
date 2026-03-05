// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationKeysItem {
  /// The content type of the App Configuration Key.
  final pulumi.Input<String> contentType;
  /// The ETag of the key.
  final pulumi.Input<String> etag;
  /// The name of the App Configuration Keys to look up.
  final pulumi.Input<String> key;
  /// The label of the App Configuration Keys tp look up.
  final pulumi.Input<String> label;
  /// Is this App Configuration Key be Locked to prevent changes.
  final pulumi.Input<bool> locked;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/).
  final pulumi.Input<String> type;
  /// The value of the App Configuration Key.
  final pulumi.Input<String> value;
  /// The ID of the vault secret this App Configuration Key refers to, when `type` is `vault`.
  final pulumi.Input<String> vaultKeyReference;

  /// Creates a new [GetConfigurationKeysItem].
  /// [contentType] The content type of the App Configuration Key.
  /// [etag] The ETag of the key.
  /// [key] The name of the App Configuration Keys to look up.
  /// [label] The label of the App Configuration Keys tp look up.
  /// [locked] Is this App Configuration Key be Locked to prevent changes.
  /// [tags] A mapping of tags assigned to the resource.
  /// [type] The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/).
  /// [value] The value of the App Configuration Key.
  /// [vaultKeyReference] The ID of the vault secret this App Configuration Key refers to, when `type` is `vault`.
  GetConfigurationKeysItem({
    required this.contentType,
    required this.etag,
    required this.key,
    required this.label,
    required this.locked,
    required this.tags,
    required this.type,
    required this.value,
    required this.vaultKeyReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'etag': etag,
      'key': key,
      'label': label,
      'locked': locked,
      'tags': tags,
      'type': type,
      'value': value,
      'vaultKeyReference': vaultKeyReference,
    };
  }

  factory GetConfigurationKeysItem.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeysItem(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      locked: pulumi.Input.fromValue(map['locked'] as bool),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      vaultKeyReference: pulumi.Input.fromValue(map['vaultKeyReference'] as String),
    );
  }
}

