// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_tables_get_tables_args_doc}
/// Arguments for getTables.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_tables_get_tables_args_doc}
class GetTablesArgs {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetTablesArgs].
  /// [datasetId] The dataset ID.
  /// [project] The ID of the project in which the resource belongs.
  const GetTablesArgs({
    required this.datasetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
    };
  }

  factory GetTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTablesArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
