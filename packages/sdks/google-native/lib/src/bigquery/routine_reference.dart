// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutineReference {
  /// The ID of the dataset containing this routine.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this routine.
  final pulumi.Input<String> project;
  /// The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final pulumi.Input<String> routineId;

  /// Creates a new [RoutineReference].
  /// [datasetId] The ID of the dataset containing this routine.
  /// [project] The ID of the project containing this routine.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  RoutineReference({
    required this.datasetId,
    required this.project,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
      'routineId': routineId,
    };
  }

  factory RoutineReference.fromMap(Map<String, dynamic> map) {
    return RoutineReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      routineId: pulumi.Input.fromValue(map['routineId'] as String),
    );
  }
}

