// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetAccessDatasetDataset {
  /// The ID of the dataset containing this table.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String> projectId;

  /// Creates a new [DatasetAccessDatasetDataset].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  DatasetAccessDatasetDataset({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
    };
  }

  factory DatasetAccessDatasetDataset.fromMap(Map<String, dynamic> map) {
    return DatasetAccessDatasetDataset(
      datasetId: (map['datasetId'] as String).input(),
      projectId: (map['projectId'] as String).input(),
    );
  }
}

