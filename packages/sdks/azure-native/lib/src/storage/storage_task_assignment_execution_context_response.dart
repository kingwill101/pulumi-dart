// ignore_for_file: unused_element, unnecessary_cast

import 'execution_target_response.dart';
import 'execution_trigger_response.dart';

/// Execution context of the storage task assignment.
class StorageTaskAssignmentExecutionContextResponse {
  /// Execution target of the storage task assignment
  final ExecutionTargetResponse? target;
  /// Execution trigger of the storage task assignment
  final ExecutionTriggerResponse trigger;

  /// Creates a new [StorageTaskAssignmentExecutionContextResponse].
  /// [target] Execution target of the storage task assignment
  /// [trigger] Execution trigger of the storage task assignment
  StorageTaskAssignmentExecutionContextResponse({
    this.target,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target == null ? null : target!.toMap(),
      'trigger': trigger.toMap(),
    };
  }

  factory StorageTaskAssignmentExecutionContextResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentExecutionContextResponse(
      target: map['target'] == null ? null : ExecutionTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
      trigger: ExecutionTriggerResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

