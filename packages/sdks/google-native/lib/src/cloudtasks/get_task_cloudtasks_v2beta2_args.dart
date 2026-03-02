// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2beta2_get_task_cloudtasks_v2beta2_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta2_get_task_cloudtasks_v2beta2_args_doc}
class GetTaskCloudtasksV2beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String>? responseView;
  final pulumi.Input<String> taskId;

  /// Creates a new [GetTaskCloudtasksV2beta2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  /// [responseView] Optional.
  /// [taskId] Required.
  GetTaskCloudtasksV2beta2Args({
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

  factory GetTaskCloudtasksV2beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTaskCloudtasksV2beta2Args(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      queueId: (map['queueId'] as String).input(),
      responseView: map['responseView'] == null ? null : (map['responseView']! as String).input(),
      taskId: (map['taskId'] as String).input(),
    );
  }
}

