// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2_get_task_args_doc}
class GetTaskArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String>? responseView;
  final pulumi.Input<String> taskId;

  /// Creates a new [GetTaskArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  /// [responseView] Optional.
  /// [taskId] Required.
  GetTaskArgs({
    required this.location,
    this.project,
    required this.queueId,
    this.responseView,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queueId': queueId,
      'responseView': ?responseView,
      'taskId': taskId,
    };
  }

  factory GetTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      queueId: (map['queueId'] as String).input(),
      responseView: map['responseView'] == null ? null : (map['responseView']! as String).input(),
      taskId: (map['taskId'] as String).input(),
    );
  }
}

