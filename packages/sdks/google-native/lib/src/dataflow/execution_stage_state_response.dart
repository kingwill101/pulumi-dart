// ignore_for_file: unused_element, unnecessary_cast


/// A message describing the state of a particular execution stage.
class ExecutionStageStateResponse {
  /// The time at which the stage transitioned to this state.
  final String currentStateTime;
  /// The name of the execution stage.
  final String executionStageName;
  /// Executions stage states allow the same set of values as JobState.
  final String executionStageState;

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
      currentStateTime: map['currentStateTime'] as String,
      executionStageName: map['executionStageName'] as String,
      executionStageState: map['executionStageState'] as String,
    );
  }
}

