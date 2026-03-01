// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_v2_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_get_table_args_doc}
class GetTableArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? selectedFields;
  final pulumi.Input<String> tableId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetTableArgs].
  /// [datasetId] Required.
  /// [project] Optional.
  /// [selectedFields] Optional.
  /// [tableId] Required.
  /// [view] Optional.
  GetTableArgs({
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selectedFields,
    required pulumi.Output<String> tableId,
    pulumi.Output<String>? view,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      project = pulumi.Input.asOptionalInput<String>(project),
      selectedFields = pulumi.Input.asOptionalInput<String>(selectedFields),
      tableId = pulumi.Input.asInput<String>(tableId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
      'selectedFields': ?selectedFields,
      'tableId': tableId,
      'view': ?view,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selectedFields: map['selectedFields'] == null ? null : pulumi.Output.create<String>(map['selectedFields'] as String),
      tableId: pulumi.Output.create<String>(map['tableId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

