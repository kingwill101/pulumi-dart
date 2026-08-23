// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecPostScanActionsBigqueryExport {
  /// The BigQuery table to export DataProfileScan results to.
  /// Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final pulumi.Input<String>? resultsTable;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsBigqueryExport].
  /// [resultsTable] The BigQuery table to export DataProfileScan results to.
  const DatascanDataQualitySpecPostScanActionsBigqueryExport({
    this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resultsTable': ?resultsTable,
    };
  }

  factory DatascanDataQualitySpecPostScanActionsBigqueryExport.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActionsBigqueryExport(
      resultsTable: (() { final guardedValue = map['resultsTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
