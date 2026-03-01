// ignore_for_file: unused_element, unnecessary_cast

import 'execution_target.dart';
import 'execution_trigger.dart';

/// Execution context of the storage task assignment.
class StorageTaskAssignmentExecutionContext {
  /// Execution target of the storage task assignment
  final ExecutionTarget? target;
  /// Execution trigger of the storage task assignment
  final ExecutionTrigger trigger;

  /// Creates a new [StorageTaskAssignmentExecutionContext].
  /// [target] Execution target of the storage task assignment
  /// [trigger] Execution trigger of the storage task assignment
  StorageTaskAssignmentExecutionContext({
    this.target,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target == null ? null : target!.toMap(),
      'trigger': trigger.toMap(),
    };
  }

  factory StorageTaskAssignmentExecutionContext.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentExecutionContext(
      target: map['target'] == null ? null : ExecutionTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
      trigger: ExecutionTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

