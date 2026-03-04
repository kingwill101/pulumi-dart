// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message describing the state of a particular execution stage.
class ExecutionStageStateResponse {
  /// The time at which the stage transitioned to this state.
  final pulumi.Input<String> currentStateTime;

  /// The name of the execution stage.
  final pulumi.Input<String> executionStageName;

  /// Executions stage states allow the same set of values as JobState.
  final pulumi.Input<String> executionStageState;

  /// Creates a new [ExecutionStageStateResponse].
  /// [currentStateTime] The time at which the stage transitioned to this state.
  /// [executionStageName] The name of the execution stage.
  /// [executionStageState] Executions stage states allow the same set of values as JobState.
  ExecutionStageStateResponse({
    required this.currentStateTime,
    required this.executionStageName,
    required this.executionStageState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentStateTime': currentStateTime,
      'executionStageName': executionStageName,
      'executionStageState': executionStageState,
    };
  }

  factory ExecutionStageStateResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionStageStateResponse(
      currentStateTime: pulumi.Input.fromValue(
        map['currentStateTime'] as String,
      ),
      executionStageName: pulumi.Input.fromValue(
        map['executionStageName'] as String,
      ),
      executionStageState: pulumi.Input.fromValue(
        map['executionStageState'] as String,
      ),
    );
  }
}
