// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message details. Describe the conditions under which messages will be sent. If no attribute is defined, no message will be sent by default. One message should specify either the job or the task level attributes, but not both. For example, job level: JOB_STATE_CHANGED and/or a specified new_job_state; task level: TASK_STATE_CHANGED and/or a specified new_task_state.
class MessageResponse {
  /// The new job state.
  final pulumi.Input<String> newJobState;
  /// The new task state.
  final pulumi.Input<String> newTaskState;
  /// The message type.
  final pulumi.Input<String> type;

  /// Creates a new [MessageResponse].
  /// [newJobState] The new job state.
  /// [newTaskState] The new task state.
  /// [type] The message type.
  const MessageResponse({
    required this.newJobState,
    required this.newTaskState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newJobState': newJobState,
      'newTaskState': newTaskState,
      'type': type,
    };
  }

  factory MessageResponse.fromMap(Map<String, dynamic> map) {
    return MessageResponse(
      newJobState: pulumi.Input.fromValue(map['newJobState'] as String),
      newTaskState: pulumi.Input.fromValue(map['newTaskState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
