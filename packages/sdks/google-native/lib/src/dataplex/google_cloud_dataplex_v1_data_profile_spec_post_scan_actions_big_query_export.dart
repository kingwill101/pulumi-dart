// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of BigQuery export post scan action.
class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport {
  /// Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final pulumi.Input<String>? resultsTable;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport].
  /// [resultsTable] Optional. The BigQuery table to export DataProfileScan results to. Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  const GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport({
    this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resultsTable': ?resultsTable,
    };
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport(
      resultsTable: (() { final guardedValue = map['resultsTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

