// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_response_workflowexecutions_v1beta.dart';

/// Represents the current status of this execution.
class StatusResponseWorkflowexecutionsV1beta {
  /// A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.
  final pulumi.Input<List<StepResponseWorkflowexecutionsV1beta>> currentSteps;

  /// Creates a new [StatusResponseWorkflowexecutionsV1beta].
  /// [currentSteps] A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.
  StatusResponseWorkflowexecutionsV1beta({
    required this.currentSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSteps': pulumi.Input.mapInputValue<List<StepResponseWorkflowexecutionsV1beta>, List<Map<String, dynamic>>>(currentSteps, (value) => pulumi.Input.encodeList<StepResponseWorkflowexecutionsV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatusResponseWorkflowexecutionsV1beta.fromMap(Map<String, dynamic> map) {
    return StatusResponseWorkflowexecutionsV1beta(
      currentSteps: (pulumi.Input.decodeList<StepResponseWorkflowexecutionsV1beta>(map['currentSteps'], (value) => StepResponseWorkflowexecutionsV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

