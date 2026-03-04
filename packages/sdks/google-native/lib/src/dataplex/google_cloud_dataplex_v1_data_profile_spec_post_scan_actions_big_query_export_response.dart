// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of BigQuery export post scan action.
class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse {
  /// Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final pulumi.Input<String> resultsTable;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse].
  /// [resultsTable] Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse({
    required this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resultsTable': resultsTable};
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse(
      resultsTable: pulumi.Input.fromValue(map['resultsTable'] as String),
    );
  }
}
