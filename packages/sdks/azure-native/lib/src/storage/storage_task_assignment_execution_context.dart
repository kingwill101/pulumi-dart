// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_target.dart';
import 'execution_trigger.dart';

/// Execution context of the storage task assignment.
class StorageTaskAssignmentExecutionContext {
  /// Execution target of the storage task assignment
  final pulumi.Input<ExecutionTarget>? target;
  /// Execution trigger of the storage task assignment
  final pulumi.Input<ExecutionTrigger> trigger;

  /// Creates a new [StorageTaskAssignmentExecutionContext].
  /// [target] Execution target of the storage task assignment
  /// [trigger] Execution trigger of the storage task assignment
  StorageTaskAssignmentExecutionContext({
    this.target,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?pulumi.Input.mapOptionalInputValue<ExecutionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'trigger': pulumi.Input.mapInputValue<ExecutionTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory StorageTaskAssignmentExecutionContext.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentExecutionContext(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trigger: pulumi.Input.fromValue(ExecutionTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

