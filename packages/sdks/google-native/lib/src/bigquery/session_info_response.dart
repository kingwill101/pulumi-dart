// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionInfoResponse {
  /// // [Preview] Id of the session.
  final pulumi.Input<String> sessionId;

  /// Creates a new [SessionInfoResponse].
  /// [sessionId] // [Preview] Id of the session.
  SessionInfoResponse({required this.sessionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sessionId': sessionId};
  }

  factory SessionInfoResponse.fromMap(Map<String, dynamic> map) {
    return SessionInfoResponse(
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
    );
  }
}
