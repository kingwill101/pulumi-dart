// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_conversation_context_message_entry.dart';

class GeneratorSummarizationContextFewShotExampleConversationContext {
  /// Optional. List of message transcripts in the conversation.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry
    >
  >?
  messageEntries;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleConversationContext].
  /// [messageEntries] Optional. List of message transcripts in the conversation.
  GeneratorSummarizationContextFewShotExampleConversationContext({
    this.messageEntries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageEntries':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry
            >,
            List<Map<String, dynamic>>
          >(
            messageEntries,
            (value) =>
                pulumi.Input.encodeList<
                  GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GeneratorSummarizationContextFewShotExampleConversationContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return GeneratorSummarizationContextFewShotExampleConversationContext(
      messageEntries: (() {
        final guardedValue = map['messageEntries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry
          >(
            guardedValue,
            (value) =>
                GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
