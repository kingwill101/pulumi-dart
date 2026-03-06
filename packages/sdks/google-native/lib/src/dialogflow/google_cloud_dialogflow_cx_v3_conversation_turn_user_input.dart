// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_query_input.dart';

/// The input from the human user.
class GoogleCloudDialogflowCxV3ConversationTurnUserInput {
  /// Whether sentiment analysis is enabled.
  final pulumi.Input<bool>? enableSentimentAnalysis;
  /// Parameters that need to be injected into the conversation during intent detection.
  final pulumi.Input<Map<String, String>>? injectedParameters;
  /// Supports text input, event input, dtmf input in the test case.
  final pulumi.Input<GoogleCloudDialogflowCxV3QueryInput>? input;
  /// If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  final pulumi.Input<bool>? isWebhookEnabled;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurnUserInput].
  /// [enableSentimentAnalysis] Whether sentiment analysis is enabled.
  /// [injectedParameters] Parameters that need to be injected into the conversation during intent detection.
  /// [input] Supports text input, event input, dtmf input in the test case.
  /// [isWebhookEnabled] If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  const GoogleCloudDialogflowCxV3ConversationTurnUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.input,
    this.isWebhookEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSentimentAnalysis': ?enableSentimentAnalysis,
      'injectedParameters': ?injectedParameters,
      'input': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3QueryInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isWebhookEnabled': ?isWebhookEnabled,
    };
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnUserInput(
      enableSentimentAnalysis: (() { final guardedValue = map['enableSentimentAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      injectedParameters: (() { final guardedValue = map['injectedParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3QueryInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isWebhookEnabled: (() { final guardedValue = map['isWebhookEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

