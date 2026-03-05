// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestCaseConversationTurnUserInputInputText {
  /// The natural language text to be processed. Text length must not exceed 256 characters.
  final pulumi.Input<String> text;

  /// Creates a new [CxTestCaseTestCaseConversationTurnUserInputInputText].
  /// [text] The natural language text to be processed. Text length must not exceed 256 characters.
  CxTestCaseTestCaseConversationTurnUserInputInputText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory CxTestCaseTestCaseConversationTurnUserInputInputText.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInputInputText(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

