// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a step of the workflow this execution is running.
class StepResponseWorkflowexecutionsV1beta {
  /// Name of a routine within the workflow.
  final pulumi.Input<String> routine;
  /// Name of a step within the routine.
  final pulumi.Input<String> step;

  /// Creates a new [StepResponseWorkflowexecutionsV1beta].
  /// [routine] Name of a routine within the workflow.
  /// [step] Name of a step within the routine.
  const StepResponseWorkflowexecutionsV1beta({
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routine': routine,
      'step': step,
    };
  }

  factory StepResponseWorkflowexecutionsV1beta.fromMap(Map<String, dynamic> map) {
    return StepResponseWorkflowexecutionsV1beta(
      routine: pulumi.Input.fromValue(map['routine'] as String),
      step: pulumi.Input.fromValue(map['step'] as String),
    );
  }
}
