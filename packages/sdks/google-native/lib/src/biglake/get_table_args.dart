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
  GetTableArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tableId,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tableId = pulumi.Input.asInput<String>(tableId);

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
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tableId: pulumi.Output.create<String>(map['tableId'] as String),
    );
  }
}

