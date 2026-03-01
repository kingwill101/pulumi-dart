// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_table_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_table_get_table_args_doc}
class GetTableArgs {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The table ID.
  final pulumi.Input<String> tableId;

  /// Creates a new [GetTableArgs].
  /// [datasetId] The dataset ID.
  /// [project] The ID of the project in which the resource belongs.
  /// [tableId] The table ID.
  GetTableArgs({
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tableId,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tableId = pulumi.Input.asInput<String>(tableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tableId: pulumi.Output.create<String>(map['tableId'] as String),
    );
  }
}

