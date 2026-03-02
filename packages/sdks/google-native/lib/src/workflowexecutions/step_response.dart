// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a step of the workflow this execution is running.
class StepResponse {
  /// Name of a routine within the workflow.
  final pulumi.Input<String> routine;
  /// Name of a step within the routine.
  final pulumi.Input<String> step;

  /// Creates a new [StepResponse].
  /// [routine] Name of a routine within the workflow.
  /// [step] Name of a step within the routine.
  StepResponse({
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routine': routine,
      'step': step,
    };
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      routine: (map['routine'] as String).input(),
      step: (map['step'] as String).input(),
    );
  }
}

