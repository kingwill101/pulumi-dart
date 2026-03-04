// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatasetAccessDatasetDataset {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;

  /// The ID of the project containing this table.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetDatasetAccessDatasetDataset].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  GetDatasetAccessDatasetDataset({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetId': datasetId, 'projectId': projectId};
  }

  factory GetDatasetAccessDatasetDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessDatasetDataset(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
