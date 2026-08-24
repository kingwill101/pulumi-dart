// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_list_item.dart';

/// {@template pulumi_index_teams_list_teams_list_args_doc}
/// The set of arguments for TeamsList.
/// {@endtemplate}
/// {@macro pulumi_index_teams_list_teams_list_args_doc}
class TeamsListArgs {
  final pulumi.Input<String> accountId;
  /// Provide the list description.
  final pulumi.Input<String?>? description;
  /// Add items to the list.
  final pulumi.Input<List<TeamsListItem>?>? items;
  /// Specify the list name.
  final pulumi.Input<String> name;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String> type;

  /// Creates a new [TeamsListArgs].
  /// [accountId] Required.
  /// [description] Provide the list description.
  /// [items] Add items to the list.
  /// [name] Specify the list name.
  /// [type] Specify the list type.
  const TeamsListArgs({
    required this.accountId,
    this.description,
    this.items,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'items': ?pulumi.Input.mapOptionalInputValue<List<TeamsListItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<TeamsListItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'type': type,
    };
  }

  factory TeamsListArgs.fromMap(Map<String, dynamic> map) {
    return TeamsListArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsListItem>(guardedValue, (value) => TeamsListItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
