// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message defining the location of a BigQuery table. A table is uniquely identified by its project_id, dataset_id, and table_name. Within a query a table is often referenced with a string in the format of: `:.` or `..`.
class GooglePrivacyDlpV2BigQueryTableResponse {
  /// Dataset ID of the table.
  final pulumi.Input<String> datasetId;
  /// The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call.
  final pulumi.Input<String> project;
  /// Name of the table.
  final pulumi.Input<String> tableId;

  /// Creates a new [GooglePrivacyDlpV2BigQueryTableResponse].
  /// [datasetId] Dataset ID of the table.
  /// [project] The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call.
  /// [tableId] Name of the table.
  const GooglePrivacyDlpV2BigQueryTableResponse({
    required this.datasetId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory GooglePrivacyDlpV2BigQueryTableResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}

