// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_test_case_conversation_turn_user_input_input_dtmf.dart';
import 'cx_test_case_test_case_conversation_turn_user_input_input_event.dart';
import 'cx_test_case_test_case_conversation_turn_user_input_input_text.dart';

class CxTestCaseTestCaseConversationTurnUserInputInput {
  /// The DTMF event to be handled.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnUserInputInputDtmf>? dtmf;
  /// The event to be triggered.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnUserInputInputEvent>? event;
  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// Note that queries in the same session do not necessarily need to specify the same language.
  final pulumi.Input<String>? languageCode;
  /// The natural language text to be processed.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnUserInputInputText>? text;

  /// Creates a new [CxTestCaseTestCaseConversationTurnUserInputInput].
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// [text] The natural language text to be processed.
  CxTestCaseTestCaseConversationTurnUserInputInput({
    this.dtmf,
    this.event,
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmf': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnUserInputInputDtmf, Map<String, dynamic>>(dtmf, (value) => value.toMap()),
      'event': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnUserInputInputEvent, Map<String, dynamic>>(event, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'text': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnUserInputInputText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory CxTestCaseTestCaseConversationTurnUserInputInput.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInputInput(
      dtmf: (() { final guardedValue = map['dtmf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseTestCaseConversationTurnUserInputInputDtmf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseTestCaseConversationTurnUserInputInputEvent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseTestCaseConversationTurnUserInputInputText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

