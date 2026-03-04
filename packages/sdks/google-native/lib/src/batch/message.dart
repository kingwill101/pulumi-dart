// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_new_job_state.dart';
import 'message_new_task_state.dart';
import 'message_type.dart';

/// Message details. Describe the conditions under which messages will be sent. If no attribute is defined, no message will be sent by default. One message should specify either the job or the task level attributes, but not both. For example, job level: JOB_STATE_CHANGED and/or a specified new_job_state; task level: TASK_STATE_CHANGED and/or a specified new_task_state.
class Message {
  /// The new job state.
  final pulumi.Input<MessageNewJobState>? newJobState;

  /// The new task state.
  final pulumi.Input<MessageNewTaskState>? newTaskState;

  /// The message type.
  final pulumi.Input<MessageType>? type;

  /// Creates a new [Message].
  /// [newJobState] The new job state.
  /// [newTaskState] The new task state.
  /// [type] The message type.
  Message({this.newJobState, this.newTaskState, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newJobState':
          ?pulumi.Input.mapOptionalInputValue<MessageNewJobState, String>(
            newJobState,
            (value) => value.wireValue,
          ),
      'newTaskState':
          ?pulumi.Input.mapOptionalInputValue<MessageNewTaskState, String>(
            newTaskState,
            (value) => value.wireValue,
          ),
      'type': ?pulumi.Input.mapOptionalInputValue<MessageType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      newJobState: (() {
        final guardedValue = map['newJobState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MessageNewJobState.fromValue(guardedValue as String),
        );
      })(),
      newTaskState: (() {
        final guardedValue = map['newTaskState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MessageNewTaskState.fromValue(guardedValue as String),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MessageType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
