// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobExtractSourceTable {
  /// The ID of the dataset containing this table.
  final pulumi.Input<String>? datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String>? projectId;
  /// The table. Can be specified `{{table_id}}` if `project_id` and `dataset_id` are also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}` if not.
  final pulumi.Input<String> tableId;

  /// Creates a new [JobExtractSourceTable].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The table. Can be specified `{{table_id}}` if `project_id` and `dataset_id` are also set,
  JobExtractSourceTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'tableId': tableId,
    };
  }

  factory JobExtractSourceTable.fromMap(Map<String, dynamic> map) {
    return JobExtractSourceTable(
      datasetId: map['datasetId'] == null ? null : (map['datasetId']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

