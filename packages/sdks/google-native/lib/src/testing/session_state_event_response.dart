// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message encapsulating a series of Session states and the time that the DeviceSession first entered those states.
class SessionStateEventResponse {
  /// The time that the session_state first encountered that state.
  final pulumi.Input<String> eventTime;
  /// The session_state tracked by this event
  final pulumi.Input<String> sessionState;
  /// A human-readable message to explain the state.
  final pulumi.Input<String> stateMessage;

  /// Creates a new [SessionStateEventResponse].
  /// [eventTime] The time that the session_state first encountered that state.
  /// [sessionState] The session_state tracked by this event
  /// [stateMessage] A human-readable message to explain the state.
  SessionStateEventResponse({
    required this.eventTime,
    required this.sessionState,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTime': eventTime,
      'sessionState': sessionState,
      'stateMessage': stateMessage,
    };
  }

  factory SessionStateEventResponse.fromMap(Map<String, dynamic> map) {
    return SessionStateEventResponse(
      eventTime: (map['eventTime'] as String).input(),
      sessionState: (map['sessionState'] as String).input(),
      stateMessage: (map['stateMessage'] as String).input(),
    );
  }
}

