// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_execution_response.dart';

/// Status event
class StatusEventResponse {
  /// Description of the event.
  final pulumi.Input<String> description;

  /// The time this event occurred.
  final pulumi.Input<String> eventTime;

  /// Task Execution
  final pulumi.Input<TaskExecutionResponse> taskExecution;

  /// Task State
  final pulumi.Input<String> taskState;

  /// Type of the event.
  final pulumi.Input<String> type;

  /// Creates a new [StatusEventResponse].
  /// [description] Description of the event.
  /// [eventTime] The time this event occurred.
  /// [taskExecution] Task Execution
  /// [taskState] Task State
  /// [type] Type of the event.
  StatusEventResponse({
    required this.description,
    required this.eventTime,
    required this.taskExecution,
    required this.taskState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'eventTime': eventTime,
      'taskExecution':
          pulumi.Input.mapInputValue<
            TaskExecutionResponse,
            Map<String, dynamic>
          >(taskExecution, (value) => value.toMap()),
      'taskState': taskState,
      'type': type,
    };
  }

  factory StatusEventResponse.fromMap(Map<String, dynamic> map) {
    return StatusEventResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      eventTime: pulumi.Input.fromValue(map['eventTime'] as String),
      taskExecution: pulumi.Input.fromValue(
        TaskExecutionResponse.fromMap(
          (map['taskExecution']! as Map).cast<String, dynamic>(),
        ),
      ),
      taskState: pulumi.Input.fromValue(map['taskState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
