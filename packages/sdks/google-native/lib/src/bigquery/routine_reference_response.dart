// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutineReferenceResponse {
  /// The ID of the dataset containing this routine.
  final pulumi.Input<String> datasetId;

  /// The ID of the project containing this routine.
  final pulumi.Input<String> project;

  /// The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final pulumi.Input<String> routineId;

  /// Creates a new [RoutineReferenceResponse].
  /// [datasetId] The ID of the dataset containing this routine.
  /// [project] The ID of the project containing this routine.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  RoutineReferenceResponse({
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

  factory RoutineReferenceResponse.fromMap(Map<String, dynamic> map) {
    return RoutineReferenceResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      routineId: pulumi.Input.fromValue(map['routineId'] as String),
    );
  }
}
