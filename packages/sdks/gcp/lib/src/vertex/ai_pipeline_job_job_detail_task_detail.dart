// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_job_detail_task_detail_error.dart';

class AiPipelineJobJobDetailTaskDetail {
  /// (Output)
  /// Task create time.
  final pulumi.Input<String?>? createTime;
  /// (Output)
  /// Task end time.
  final pulumi.Input<String?>? endTime;
  /// (Output)
  /// The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobJobDetailTaskDetailError>?>? errors;
  /// (Output)
  /// The id of the parent task if the task is within a component scope. Empty if the task is at the root level.
  final pulumi.Input<String?>? parentTaskId;
  /// (Output)
  /// Task start time.
  final pulumi.Input<String?>? startTime;
  /// (Output)
  /// The detailed state of the task.
  final pulumi.Input<String?>? state;
  /// (Output)
  /// The system generated ID of the task.
  final pulumi.Input<String?>? taskId;
  /// (Output)
  /// The user specified name of the task that is defined in pipeline_spec.
  final pulumi.Input<String?>? taskName;
  /// (Output)
  /// The unique name of a task.
  final pulumi.Input<String?>? taskUniqueName;

  /// Creates a new [AiPipelineJobJobDetailTaskDetail].
  /// [createTime] (Output)
  /// [endTime] (Output)
  /// [errors] (Output)
  /// [parentTaskId] (Output)
  /// [startTime] (Output)
  /// [state] (Output)
  /// [taskId] (Output)
  /// [taskName] (Output)
  /// [taskUniqueName] (Output)
  const AiPipelineJobJobDetailTaskDetail({
    this.createTime,
    this.endTime,
    this.errors,
    this.parentTaskId,
    this.startTime,
    this.state,
    this.taskId,
    this.taskName,
    this.taskUniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'endTime': ?endTime,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobJobDetailTaskDetailError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiPipelineJobJobDetailTaskDetailError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentTaskId': ?parentTaskId,
      'startTime': ?startTime,
      'state': ?state,
      'taskId': ?taskId,
      'taskName': ?taskName,
      'taskUniqueName': ?taskUniqueName,
    };
  }

  factory AiPipelineJobJobDetailTaskDetail.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobJobDetailTaskDetail(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobJobDetailTaskDetailError>(guardedValue, (value) => AiPipelineJobJobDetailTaskDetailError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parentTaskId: (() { final guardedValue = map['parentTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskUniqueName: (() { final guardedValue = map['taskUniqueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
