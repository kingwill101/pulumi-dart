// ignore_for_file: unused_element, unnecessary_cast


/// Historical state information.
class SessionStateHistoryResponse {
  /// The state of the session at this point in the session history.
  final String state;
  /// Details about the state at this point in the session history.
  final String stateMessage;
  /// The time when the session entered the historical state.
  final String stateStartTime;

  /// Creates a new [SessionStateHistoryResponse].
  /// [state] The state of the session at this point in the session history.
  /// [stateMessage] Details about the state at this point in the session history.
  /// [stateStartTime] The time when the session entered the historical state.
  SessionStateHistoryResponse({
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
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      stateStartTime: map['stateStartTime'] as String,
    );
  }
}

