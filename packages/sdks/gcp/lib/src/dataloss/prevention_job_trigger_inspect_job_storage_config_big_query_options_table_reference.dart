// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference {
  /// The dataset ID of the table.
  final pulumi.Input<String> datasetId;
  /// The Google Cloud Platform project ID of the project containing the table.
  final pulumi.Input<String> projectId;
  /// The name of the table.
  final pulumi.Input<String> tableId;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference].
  /// [datasetId] The dataset ID of the table.
  /// [projectId] The Google Cloud Platform project ID of the project containing the table.
  /// [tableId] The name of the table.
  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'tableId': tableId,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference(
      datasetId: (map['datasetId'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

