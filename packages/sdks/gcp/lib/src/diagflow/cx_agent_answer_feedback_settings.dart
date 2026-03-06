// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxAgentAnswerFeedbackSettings {
  /// If enabled, end users will be able to provide [answer feedback](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/submitAnswerFeedback#body.AnswerFeedback)
  /// to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  final pulumi.Input<bool>? enableAnswerFeedback;

  /// Creates a new [CxAgentAnswerFeedbackSettings].
  /// [enableAnswerFeedback] If enabled, end users will be able to provide [answer feedback](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/submitAnswerFeedback#body.AnswerFeedback)
  const CxAgentAnswerFeedbackSettings({
    this.enableAnswerFeedback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAnswerFeedback': ?enableAnswerFeedback,
    };
  }

  factory CxAgentAnswerFeedbackSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentAnswerFeedbackSettings(
      enableAnswerFeedback: (() { final guardedValue = map['enableAnswerFeedback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

