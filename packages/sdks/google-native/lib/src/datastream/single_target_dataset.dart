// ignore_for_file: unused_element, unnecessary_cast


/// A single target dataset to which all data will be streamed.
class SingleTargetDataset {
  /// The dataset ID of the target dataset. DatasetIds allowed characters: https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets#datasetreference.
  final String? datasetId;

  /// Creates a new [SingleTargetDataset].
  /// [datasetId] The dataset ID of the target dataset. DatasetIds allowed characters: https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets#datasetreference.
  SingleTargetDataset({
    this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
    };
  }

  factory SingleTargetDataset.fromMap(Map<String, dynamic> map) {
    return SingleTargetDataset(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
    );
  }
}

