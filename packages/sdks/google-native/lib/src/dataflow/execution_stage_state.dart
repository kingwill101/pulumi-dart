// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_stage_state_execution_stage_state.dart';

/// A message describing the state of a particular execution stage.
class ExecutionStageState {
  /// The time at which the stage transitioned to this state.
  final pulumi.Input<String>? currentStateTime;

  /// The name of the execution stage.
  final pulumi.Input<String>? executionStageName;

  /// Executions stage states allow the same set of values as JobState.
  final pulumi.Input<ExecutionStageStateExecutionStageState>?
  executionStageState;

  /// Creates a new [ExecutionStageState].
  /// [currentStateTime] The time at which the stage transitioned to this state.
  /// [executionStageName] The name of the execution stage.
  /// [executionStageState] Executions stage states allow the same set of values as JobState.
  ExecutionStageState({
    this.currentStateTime,
    this.executionStageName,
    this.executionStageState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentStateTime': ?currentStateTime,
      'executionStageName': ?executionStageName,
      'executionStageState':
          ?pulumi.Input.mapOptionalInputValue<
            ExecutionStageStateExecutionStageState,
            String
          >(executionStageState, (value) => value.wireValue),
    };
  }

  factory ExecutionStageState.fromMap(Map<String, dynamic> map) {
    return ExecutionStageState(
      currentStateTime: (() {
        final guardedValue = map['currentStateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionStageName: (() {
        final guardedValue = map['executionStageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionStageState: (() {
        final guardedValue = map['executionStageState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecutionStageStateExecutionStageState.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
