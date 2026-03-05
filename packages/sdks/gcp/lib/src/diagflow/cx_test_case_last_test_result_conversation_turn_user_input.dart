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
      enableSentimentAnalysis: (() { final guardedValue = map['enableSentimentAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      injectedParameters: (() { final guardedValue = map['injectedParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnUserInputInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isWebhookEnabled: (() { final guardedValue = map['isWebhookEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

