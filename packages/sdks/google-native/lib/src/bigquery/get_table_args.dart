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
    required this.datasetId,
    this.project,
    this.selectedFields,
    required this.tableId,
    this.view,
  });

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
      datasetId: (map['datasetId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      selectedFields: map['selectedFields'] == null ? null : (map['selectedFields']! as String).input(),
      tableId: (map['tableId'] as String).input(),
      view: map['view'] == null ? null : (map['view']! as String).input(),
    );
  }
}

