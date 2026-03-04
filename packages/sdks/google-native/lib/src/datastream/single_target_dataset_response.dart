// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single target dataset to which all data will be streamed.
class SingleTargetDatasetResponse {
  /// The dataset ID of the target dataset. DatasetIds allowed characters: https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets#datasetreference.
  final pulumi.Input<String> datasetId;

  /// Creates a new [SingleTargetDatasetResponse].
  /// [datasetId] The dataset ID of the target dataset. DatasetIds allowed characters: https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets#datasetreference.
  SingleTargetDatasetResponse({required this.datasetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetId': datasetId};
  }

  factory SingleTargetDatasetResponse.fromMap(Map<String, dynamic> map) {
    return SingleTargetDatasetResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
    );
  }
}
