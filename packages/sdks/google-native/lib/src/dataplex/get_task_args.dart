// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_task_args_doc}
class GetTaskArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taskId;

  /// Creates a new [GetTaskArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [taskId] Required.
  const GetTaskArgs({
    required this.lakeId,
    required this.location,
    this.project,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'taskId': taskId,
    };
  }

  factory GetTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs(
      lakeId: pulumi.Input.fromValue(map['lakeId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
    );
  }
}
