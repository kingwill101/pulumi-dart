// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Historical state information.
class SessionStateHistoryResponse {
  /// The state of the session at this point in the session history.
  final pulumi.Input<String> state;
  /// Details about the state at this point in the session history.
  final pulumi.Input<String> stateMessage;
  /// The time when the session entered the historical state.
  final pulumi.Input<String> stateStartTime;

  /// Creates a new [SessionStateHistoryResponse].
  /// [state] The state of the session at this point in the session history.
  /// [stateMessage] Details about the state at this point in the session history.
  /// [stateStartTime] The time when the session entered the historical state.
  const SessionStateHistoryResponse({
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

  factory SessionStateHistoryResponse.fromMap(Map<String, dynamic> map) {
    return SessionStateHistoryResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
      stateStartTime: pulumi.Input.fromValue(map['stateStartTime'] as String),
    );
  }
}

