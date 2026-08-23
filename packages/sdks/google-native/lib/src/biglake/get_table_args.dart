// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_v1_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_get_table_args_doc}
class GetTableArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tableId;

  /// Creates a new [GetTableArgs].
  /// [catalogId] Required.
  /// [databaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [tableId] Required.
  const GetTableArgs({
    required this.catalogId,
    required this.databaseId,
    required this.location,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseId': databaseId,
      'location': location,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
