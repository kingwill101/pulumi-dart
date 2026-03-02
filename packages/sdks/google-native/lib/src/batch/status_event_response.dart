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
      'taskExecution': pulumi.Input.mapInputValue<TaskExecutionResponse, Map<String, dynamic>>(taskExecution, (value) => value.toMap()),
      'taskState': taskState,
      'type': type,
    };
  }

  factory StatusEventResponse.fromMap(Map<String, dynamic> map) {
    return StatusEventResponse(
      description: (map['description'] as String).input(),
      eventTime: (map['eventTime'] as String).input(),
      taskExecution: (TaskExecutionResponse.fromMap((map['taskExecution'] as Map).cast<String, dynamic>())).input(),
      taskState: (map['taskState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

