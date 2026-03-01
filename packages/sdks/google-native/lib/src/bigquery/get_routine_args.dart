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
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? readMask,
    required pulumi.Output<String> routineId,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      project = pulumi.Input.asOptionalInput<String>(project),
      readMask = pulumi.Input.asOptionalInput<String>(readMask),
      routineId = pulumi.Input.asInput<String>(routineId);

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
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      readMask: map['readMask'] == null ? null : pulumi.Output.create<String>(map['readMask'] as String),
      routineId: pulumi.Output.create<String>(map['routineId'] as String),
    );
  }
}

