// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'position_response_workflowexecutions_v1beta.dart';

/// A single stack element (frame) where an error occurred.
class StackTraceElementResponseWorkflowexecutionsV1beta {
  /// The source position information of the stack trace element.
  final pulumi.Input<PositionResponseWorkflowexecutionsV1beta> position;
  /// The routine where the error occurred.
  final pulumi.Input<String> routine;
  /// The step the error occurred at.
  final pulumi.Input<String> step;

  /// Creates a new [StackTraceElementResponseWorkflowexecutionsV1beta].
  /// [position] The source position information of the stack trace element.
  /// [routine] The routine where the error occurred.
  /// [step] The step the error occurred at.
  StackTraceElementResponseWorkflowexecutionsV1beta({
    required this.position,
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'position': pulumi.Input.mapInputValue<PositionResponseWorkflowexecutionsV1beta, Map<String, dynamic>>(position, (value) => value.toMap()),
      'routine': routine,
      'step': step,
    };
  }

  factory StackTraceElementResponseWorkflowexecutionsV1beta.fromMap(Map<String, dynamic> map) {
    return StackTraceElementResponseWorkflowexecutionsV1beta(
      position: (PositionResponseWorkflowexecutionsV1beta.fromMap((map['position'] as Map).cast<String, dynamic>())).input(),
      routine: (map['routine'] as String).input(),
      step: (map['step'] as String).input(),
    );
  }
}

