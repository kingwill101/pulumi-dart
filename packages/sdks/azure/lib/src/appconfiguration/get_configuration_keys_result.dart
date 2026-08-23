// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_keys_item.dart';

/// Result data returned by getConfigurationKeys.
class GetConfigurationKeysResult {
  final String configurationStoreId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of `items` blocks as defined below.
  final List<GetConfigurationKeysItem> items;
  /// The name of the App Configuration Key.
  final String? key;
  /// The label of the App Configuration Key.
  final String? label;

  /// Creates a new [GetConfigurationKeysResult].
  /// [configurationStoreId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [items] A list of `items` blocks as defined below.
  /// [key] The name of the App Configuration Key.
  /// [label] The label of the App Configuration Key.
  const GetConfigurationKeysResult({
    required this.configurationStoreId,
    required this.id,
    required this.items,
    this.key,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'id': id,
      'items': pulumi.Input.encodeList<GetConfigurationKeysItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'key': ?key,
      'label': ?label,
    };
  }

  factory GetConfigurationKeysResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeysResult(
      configurationStoreId: map['configurationStoreId'] as String,
      id: map['id'] as String,
      items: pulumi.Input.decodeList<GetConfigurationKeysItem>(map['items']!, (value) => GetConfigurationKeysItem.fromMap((value as Map).cast<String, dynamic>())),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
