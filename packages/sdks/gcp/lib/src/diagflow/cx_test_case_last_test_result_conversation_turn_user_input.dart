// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn_user_input_input.dart';

class CxTestCaseLastTestResultConversationTurnUserInput {
  /// Whether sentiment analysis is enabled.
  final pulumi.Input<bool>? enableSentimentAnalysis;
  /// Parameters that need to be injected into the conversation during intent detection.
  final pulumi.Input<String>? injectedParameters;
  /// User input. Supports text input, event input, dtmf input in the test case.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnUserInputInput>? input;
  /// If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  final pulumi.Input<bool>? isWebhookEnabled;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInput].
  /// [enableSentimentAnalysis] Whether sentiment analysis is enabled.
  /// [injectedParameters] Parameters that need to be injected into the conversation during intent detection.
  /// [input] User input. Supports text input, event input, dtmf input in the test case.
  /// [isWebhookEnabled] If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  CxTestCaseLastTestResultConversationTurnUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.input,
    this.isWebhookEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSentimentAnalysis': ?enableSentimentAnalysis,
      'injectedParameters': ?injectedParameters,
      'input': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnUserInputInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isWebhookEnabled': ?isWebhookEnabled,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnUserInput.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInput(
      enableSentimentAnalysis: map['enableSentimentAnalysis'] == null ? null : (map['enableSentimentAnalysis'] as bool).input(),
      injectedParameters: map['injectedParameters'] == null ? null : (map['injectedParameters'] as String).input(),
      input: map['input'] == null ? null : (CxTestCaseLastTestResultConversationTurnUserInputInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      isWebhookEnabled: map['isWebhookEnabled'] == null ? null : (map['isWebhookEnabled'] as bool).input(),
    );
  }
}

