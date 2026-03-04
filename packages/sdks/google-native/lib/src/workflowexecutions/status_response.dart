// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_response.dart';

/// Represents the current status of this execution.
class StatusResponse {
  /// A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.
  final pulumi.Input<List<StepResponse>> currentSteps;

  /// Creates a new [StatusResponse].
  /// [currentSteps] A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.
  StatusResponse({required this.currentSteps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSteps':
          pulumi.Input.mapInputValue<
            List<StepResponse>,
            List<Map<String, dynamic>>
          >(
            currentSteps,
            (value) =>
                pulumi.Input.encodeList<StepResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory StatusResponse.fromMap(Map<String, dynamic> map) {
    return StatusResponse(
      currentSteps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<StepResponse>(
          map['currentSteps']!,
          (value) =>
              StepResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
