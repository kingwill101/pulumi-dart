// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetAccessRoutine {
  /// The ID of the dataset containing this table.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String> projectId;
  /// The ID of the routine. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 256 characters.
  final pulumi.Input<String> routineId;

  /// Creates a new [DatasetAccessRoutine].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z,
  DatasetAccessRoutine({
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

  factory DatasetAccessRoutine.fromMap(Map<String, dynamic> map) {
    return DatasetAccessRoutine(
      datasetId: (map['datasetId'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      routineId: (map['routineId'] as String).input(),
    );
  }
}

