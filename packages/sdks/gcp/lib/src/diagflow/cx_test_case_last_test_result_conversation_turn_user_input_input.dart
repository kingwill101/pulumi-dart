// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn_user_input_input_dtmf.dart';
import 'cx_test_case_last_test_result_conversation_turn_user_input_input_event.dart';
import 'cx_test_case_last_test_result_conversation_turn_user_input_input_text.dart';

class CxTestCaseLastTestResultConversationTurnUserInputInput {
  /// The DTMF event to be handled.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnUserInputInputDtmf>? dtmf;
  /// The event to be triggered.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnUserInputInputEvent>? event;
  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// Note that queries in the same session do not necessarily need to specify the same language.
  final pulumi.Input<String>? languageCode;
  /// The natural language text to be processed.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnUserInputInputText>? text;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInputInput].
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// [text] The natural language text to be processed.
  const CxTestCaseLastTestResultConversationTurnUserInputInput({
    this.dtmf,
    this.event,
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmf': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnUserInputInputDtmf, Map<String, dynamic>>(dtmf, (value) => value.toMap()),
      'event': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnUserInputInputEvent, Map<String, dynamic>>(event, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'text': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnUserInputInputText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInput.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInput(
      dtmf: (() { final guardedValue = map['dtmf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnUserInputInputDtmf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnUserInputInputEvent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnUserInputInputText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

