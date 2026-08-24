// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_list_item.dart';

/// Input properties used for looking up and filtering TeamsList resources.
class TeamsListState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Provide the list description.
  final pulumi.Input<String?>? description;
  /// Add items to the list.
  final pulumi.Input<List<TeamsListItem>?>? items;
  /// Indicate the number of items in the list.
  final pulumi.Input<double?>? listCount;
  /// Specify the list name.
  final pulumi.Input<String?>? name;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [TeamsListState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Provide the list description.
  /// [items] Add items to the list.
  /// [listCount] Indicate the number of items in the list.
  /// [name] Specify the list name.
  /// [type] Specify the list type.
  /// [updatedAt] Optional.
  const TeamsListState({
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
      'items': ?pulumi.Input.mapOptionalInputValue<List<TeamsListItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<TeamsListItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listCount': ?listCount,
      'name': ?name,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory TeamsListState.fromMap(Map<String, dynamic> map) {
    return TeamsListState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsListItem>(guardedValue, (value) => TeamsListItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      listCount: (() { final guardedValue = map['listCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
