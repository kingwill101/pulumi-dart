// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_target_response.dart';
import 'execution_trigger_response.dart';

/// Execution context of the storage task assignment.
class StorageTaskAssignmentExecutionContextResponse {
  /// Execution target of the storage task assignment
  final pulumi.Input<ExecutionTargetResponse>? target;
  /// Execution trigger of the storage task assignment
  final pulumi.Input<ExecutionTriggerResponse> trigger;

  /// Creates a new [StorageTaskAssignmentExecutionContextResponse].
  /// [target] Execution target of the storage task assignment
  /// [trigger] Execution trigger of the storage task assignment
  StorageTaskAssignmentExecutionContextResponse({
    this.target,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?pulumi.Input.mapOptionalInputValue<ExecutionTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
      'trigger': pulumi.Input.mapInputValue<ExecutionTriggerResponse, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory StorageTaskAssignmentExecutionContextResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentExecutionContextResponse(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trigger: pulumi.Input.fromValue(ExecutionTriggerResponse.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

