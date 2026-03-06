// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Historical state information.
class StateHistoryResponse {
  /// The state of the batch at this point in history.
  final pulumi.Input<String> state;
  /// Details about the state at this point in history.
  final pulumi.Input<String> stateMessage;
  /// The time when the batch entered the historical state.
  final pulumi.Input<String> stateStartTime;

  /// Creates a new [StateHistoryResponse].
  /// [state] The state of the batch at this point in history.
  /// [stateMessage] Details about the state at this point in history.
  /// [stateStartTime] The time when the batch entered the historical state.
  const StateHistoryResponse({
    required this.state,
    required this.stateMessage,
    required this.stateStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'stateMessage': stateMessage,
      'stateStartTime': stateStartTime,
    };
  }

  factory StateHistoryResponse.fromMap(Map<String, dynamic> map) {
    return StateHistoryResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
      stateStartTime: pulumi.Input.fromValue(map['stateStartTime'] as String),
    );
  }
}

