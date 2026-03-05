// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_v2_get_routine_args_doc}
/// Arguments for getRoutine.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_get_routine_args_doc}
class GetRoutineArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;
  final pulumi.Input<String> routineId;

  /// Creates a new [GetRoutineArgs].
  /// [datasetId] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  /// [routineId] Required.
  GetRoutineArgs({
    required this.datasetId,
    this.project,
    this.readMask,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
      'readMask': ?readMask,
      'routineId': routineId,
    };
  }

  factory GetRoutineArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutineArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readMask: (() { final guardedValue = map['readMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineId: pulumi.Input.fromValue(map['routineId'] as String),
    );
  }
}

