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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> queueId,
    pulumi.Output<String>? responseView,
    required pulumi.Output<String> taskId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      queueId = pulumi.Input.asInput<String>(queueId),
      responseView = pulumi.Input.asOptionalInput<String>(responseView),
      taskId = pulumi.Input.asInput<String>(taskId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queueId: pulumi.Output.create<String>(map['queueId'] as String),
      responseView: map['responseView'] == null ? null : pulumi.Output.create<String>(map['responseView'] as String),
      taskId: pulumi.Output.create<String>(map['taskId'] as String),
    );
  }
}

