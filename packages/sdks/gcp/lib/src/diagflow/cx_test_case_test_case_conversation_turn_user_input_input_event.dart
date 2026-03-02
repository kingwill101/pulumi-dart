// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestCaseConversationTurnUserInputInputEvent {
  /// Name of the event.
  final pulumi.Input<String> event;

  /// Creates a new [CxTestCaseTestCaseConversationTurnUserInputInputEvent].
  /// [event] Name of the event.
  CxTestCaseTestCaseConversationTurnUserInputInputEvent({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': event,
    };
  }

  factory CxTestCaseTestCaseConversationTurnUserInputInputEvent.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInputInputEvent(
      event: (map['event'] as String).input(),
    );
  }
}

