// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseLastTestResultConversationTurnUserInputInputText {
  /// The natural language text to be processed. Text length must not exceed 256 characters.
  final pulumi.Input<String> text;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInputInputText].
  /// [text] The natural language text to be processed. Text length must not exceed 256 characters.
  const CxTestCaseLastTestResultConversationTurnUserInputInputText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputText.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputText(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
