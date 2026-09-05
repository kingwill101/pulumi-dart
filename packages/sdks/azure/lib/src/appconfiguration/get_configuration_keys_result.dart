// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_keys_item.dart';

/// Result data returned by getConfigurationKeys.
class GetConfigurationKeysResult {
  final String? configurationStoreId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of `items` blocks as defined below.
  final List<GetConfigurationKeysItem>? items;
  /// The name of the App Configuration Key.
  final String? key;
  /// The label of the App Configuration Key.
  final String? label;

  /// Creates a new [GetConfigurationKeysResult].
  /// [configurationStoreId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [items] A list of `items` blocks as defined below.
  /// [key] The name of the App Configuration Key.
  /// [label] The label of the App Configuration Key.
  const GetConfigurationKeysResult({
    this.configurationStoreId,
    this.id,
    this.items,
    this.key,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': ?configurationStoreId,
      'id': ?id,
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationKeysItem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'key': ?key,
      'label': ?label,
    };
  }

  factory GetConfigurationKeysResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeysResult(
      configurationStoreId: (() { final guardedValue = map['configurationStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationKeysItem>(guardedValue, (value) => GetConfigurationKeysItem.fromMap((value as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
