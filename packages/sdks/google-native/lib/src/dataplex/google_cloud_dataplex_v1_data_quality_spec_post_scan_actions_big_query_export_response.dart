// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of BigQuery export post scan action.
class GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse {
  /// Optional. The BigQuery table to export DataQualityScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final pulumi.Input<String> resultsTable;

  /// Creates a new [GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse].
  /// [resultsTable] Optional. The BigQuery table to export DataQualityScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse({
    required this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resultsTable': resultsTable,
    };
  }

  factory GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse(
      resultsTable: pulumi.Input.fromValue(map['resultsTable'] as String),
    );
  }
}

