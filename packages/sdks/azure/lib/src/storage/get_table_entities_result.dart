// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_entities_item.dart';

/// Result data returned by getTableEntities.
class GetTableEntitiesResult {
  final String filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of `items` blocks as defined below.
  final List<GetTableEntitiesItem> items;
  final List<String>? selects;
  final String storageTableId;

  /// Creates a new [GetTableEntitiesResult].
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [items] A list of `items` blocks as defined below.
  /// [selects] Optional.
  /// [storageTableId] Required.
  const GetTableEntitiesResult({
    required this.filter,
    required this.id,
    required this.items,
    this.selects,
    required this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'id': id,
      'items': pulumi.Input.encodeList<GetTableEntitiesItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'selects': ?selects,
      'storageTableId': storageTableId,
    };
  }

  factory GetTableEntitiesResult.fromMap(Map<String, dynamic> map) {
    return GetTableEntitiesResult(
      filter: map['filter'] as String,
      id: map['id'] as String,
      items: pulumi.Input.decodeList<GetTableEntitiesItem>(map['items']!, (value) => GetTableEntitiesItem.fromMap((value as Map).cast<String, dynamic>())),
      selects: (() { final guardedValue = map['selects']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      storageTableId: map['storageTableId'] as String,
    );
  }
}

