// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qa_question_qa_question_data_options_conversation_data_options.dart';

class QaQuestionQaQuestionDataOptions {
  /// Options for configuring what metadata is included in the conversation data
  /// used in QAI and Discovery Engine.
  /// Structure is documented below.
  final pulumi.Input<QaQuestionQaQuestionDataOptionsConversationDataOptions?>? conversationDataOptions;

  /// Creates a new [QaQuestionQaQuestionDataOptions].
  /// [conversationDataOptions] Options for configuring what metadata is included in the conversation data
  const QaQuestionQaQuestionDataOptions({
    this.conversationDataOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationDataOptions': ?pulumi.Input.mapOptionalInputValue<QaQuestionQaQuestionDataOptionsConversationDataOptions, Map<String, dynamic>>(conversationDataOptions, (value) => value.toMap()),
    };
  }

  factory QaQuestionQaQuestionDataOptions.fromMap(Map<String, dynamic> map) {
    return QaQuestionQaQuestionDataOptions(
      conversationDataOptions: (() { final guardedValue = map['conversationDataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QaQuestionQaQuestionDataOptionsConversationDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
