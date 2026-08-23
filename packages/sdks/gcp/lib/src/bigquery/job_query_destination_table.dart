// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobQueryDestinationTable {
  /// The ID of the dataset containing this table.
  final pulumi.Input<String>? datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String>? projectId;
  /// The table. Can be specified `{{table_id}}` if `projectId` and `datasetId` are also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}` if not.
  final pulumi.Input<String> tableId;

  /// Creates a new [JobQueryDestinationTable].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The table. Can be specified `{{table_id}}` if `projectId` and `datasetId` are also set,
  const JobQueryDestinationTable({
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

  factory JobQueryDestinationTable.fromMap(Map<String, dynamic> map) {
    return JobQueryDestinationTable(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
