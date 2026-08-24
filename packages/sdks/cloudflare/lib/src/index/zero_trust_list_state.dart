// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_list_item.dart';

/// Input properties used for looking up and filtering ZeroTrustList resources.
class ZeroTrustListState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Provide the list description.
  final pulumi.Input<String?>? description;
  /// Add items to the list.
  final pulumi.Input<List<ZeroTrustListItem>?>? items;
  /// Indicate the number of items in the list.
  final pulumi.Input<double?>? listCount;
  /// Specify the list name.
  final pulumi.Input<String?>? name;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustListState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Provide the list description.
  /// [items] Add items to the list.
  /// [listCount] Indicate the number of items in the list.
  /// [name] Specify the list name.
  /// [type] Specify the list type.
  /// [updatedAt] Optional.
  const ZeroTrustListState({
    this.accountId,
    this.createdAt,
    this.description,
    this.items,
    this.listCount,
    this.name,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'items': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustListItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ZeroTrustListItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listCount': ?listCount,
      'name': ?name,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustListState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustListState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustListItem>(guardedValue, (value) => ZeroTrustListItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      listCount: (() { final guardedValue = map['listCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
