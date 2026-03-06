// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedDatasetBigqueryDataset {
  /// (Output)
  /// Output only. The full resource name of the BigQuery dataset. The DATASET_ID will match the ID
  /// of the link, so the link must match the naming restrictions of BigQuery datasets
  /// (alphanumeric characters and underscores only). The dataset will have a resource path of
  /// "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET_ID]"
  final pulumi.Input<String>? datasetId;

  /// Creates a new [LinkedDatasetBigqueryDataset].
  /// [datasetId] (Output)
  const LinkedDatasetBigqueryDataset({
    this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
    };
  }

  factory LinkedDatasetBigqueryDataset.fromMap(Map<String, dynamic> map) {
    return LinkedDatasetBigqueryDataset(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

