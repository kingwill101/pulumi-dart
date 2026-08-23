// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepUserInputEvent {
  /// Event name.
  final pulumi.Input<String> event;

  /// Creates a new [EvaluationGoldenTurnStepUserInputEvent].
  /// [event] Event name.
  const EvaluationGoldenTurnStepUserInputEvent({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': event,
    };
  }

  factory EvaluationGoldenTurnStepUserInputEvent.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepUserInputEvent(
      event: pulumi.Input.fromValue(map['event'] as String),
    );
  }
}
