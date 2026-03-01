// ignore_for_file: unused_element, unnecessary_cast


class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReference {
  /// The dataset ID of the table.
  final String datasetId;
  /// The Google Cloud Platform project ID of the project containing the table.
  final String projectId;
  /// The name of the table.
  final String tableId;

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
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}

