// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatasetAccessRoutine {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String> projectId;
  /// The ID of the routine. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 256 characters.
  final pulumi.Input<String> routineId;

  /// Creates a new [GetDatasetAccessRoutine].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z,
  const GetDatasetAccessRoutine({
    required this.datasetId,
    required this.projectId,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'routineId': routineId,
    };
  }

  factory GetDatasetAccessRoutine.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessRoutine(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      routineId: pulumi.Input.fromValue(map['routineId'] as String),
    );
  }
}

