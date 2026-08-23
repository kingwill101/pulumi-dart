// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataProfileSpecPostScanActionsBigqueryExport {
  /// The BigQuery table to export DataProfileScan results to.
  /// Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final pulumi.Input<String>? resultsTable;

  /// Creates a new [DatascanDataProfileSpecPostScanActionsBigqueryExport].
  /// [resultsTable] The BigQuery table to export DataProfileScan results to.
  const DatascanDataProfileSpecPostScanActionsBigqueryExport({
    this.resultsTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resultsTable': ?resultsTable,
    };
  }

  factory DatascanDataProfileSpecPostScanActionsBigqueryExport.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpecPostScanActionsBigqueryExport(
      resultsTable: (() { final guardedValue = map['resultsTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
