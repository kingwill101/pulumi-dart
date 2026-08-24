// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_lists_result_item.dart';

class GetZeroTrustListsResult {
  final pulumi.Input<String> createdAt;
  /// Provide the list description.
  final pulumi.Input<String> description;
  /// Identify the API resource with a UUID.
  final pulumi.Input<String> id;
  /// Provide the list items.
  final pulumi.Input<List<GetZeroTrustListsResultItem>> items;
  /// Indicate the number of items in the list.
  final pulumi.Input<double> listCount;
  /// Specify the list name.
  final pulumi.Input<String> name;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String> type;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustListsResult].
  /// [createdAt] Required.
  /// [description] Provide the list description.
  /// [id] Identify the API resource with a UUID.
  /// [items] Provide the list items.
  /// [listCount] Indicate the number of items in the list.
  /// [name] Specify the list name.
  /// [type] Specify the list type.
  /// [updatedAt] Required.
  const GetZeroTrustListsResult({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.items,
    required this.listCount,
    required this.name,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'items': pulumi.Input.mapInputValue<List<GetZeroTrustListsResultItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GetZeroTrustListsResultItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listCount': listCount,
      'name': name,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustListsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustListsResultItem>(map['items']!, (value) => GetZeroTrustListsResultItem.fromMap((value as Map).cast<String, dynamic>()))),
      listCount: pulumi.Input.fromValue((map['listCount'] as num).toDouble()),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
