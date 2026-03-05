// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for answer feedback collection.
class GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse {
  /// Optional. If enabled, end users will be able to provide answer feedback to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  final pulumi.Input<bool> enableAnswerFeedback;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse].
  /// [enableAnswerFeedback] Optional. If enabled, end users will be able to provide answer feedback to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse({
    required this.enableAnswerFeedback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAnswerFeedback': enableAnswerFeedback,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse(
      enableAnswerFeedback: pulumi.Input.fromValue(map['enableAnswerFeedback'] as bool),
    );
  }
}

