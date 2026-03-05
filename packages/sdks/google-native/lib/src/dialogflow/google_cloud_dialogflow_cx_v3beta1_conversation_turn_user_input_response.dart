// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_query_input_response.dart';

/// The input from the human user.
class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse {
  /// Whether sentiment analysis is enabled.
  final pulumi.Input<bool> enableSentimentAnalysis;
  /// Parameters that need to be injected into the conversation during intent detection.
  final pulumi.Input<Map<String, String>> injectedParameters;
  /// Supports text input, event input, dtmf input in the test case.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1QueryInputResponse> input;
  /// If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  final pulumi.Input<bool> isWebhookEnabled;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse].
  /// [enableSentimentAnalysis] Whether sentiment analysis is enabled.
  /// [injectedParameters] Parameters that need to be injected into the conversation during intent detection.
  /// [input] Supports text input, event input, dtmf input in the test case.
  /// [isWebhookEnabled] If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse({
    required this.enableSentimentAnalysis,
    required this.injectedParameters,
    required this.input,
    required this.isWebhookEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSentimentAnalysis': enableSentimentAnalysis,
      'injectedParameters': injectedParameters,
      'input': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1QueryInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isWebhookEnabled': isWebhookEnabled,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse(
      enableSentimentAnalysis: pulumi.Input.fromValue(map['enableSentimentAnalysis'] as bool),
      injectedParameters: pulumi.Input.fromValue((map['injectedParameters'] as Map).cast<String, String>()),
      input: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1QueryInputResponse.fromMap((map['input']! as Map).cast<String, dynamic>())),
      isWebhookEnabled: pulumi.Input.fromValue(map['isWebhookEnabled'] as bool),
    );
  }
}

