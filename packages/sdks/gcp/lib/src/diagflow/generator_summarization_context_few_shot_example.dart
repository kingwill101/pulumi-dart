// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_summarization_context_few_shot_example_conversation_context.dart';
import 'generator_summarization_context_few_shot_example_output.dart';
import 'generator_summarization_context_few_shot_example_summarization_section_list.dart';

class GeneratorSummarizationContextFewShotExample {
  /// Optional. Conversation transcripts.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleConversationContext?>? conversationContext;
  /// Optional. Key is the placeholder field name in input, value is the value of the placeholder. E.g. instruction contains "@price", and ingested data has &lt;"price", "10"&gt;
  final pulumi.Input<Map<String, String>?>? extraInfo;
  /// Required. Example output of the model.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleOutput> output;
  /// Summarization sections.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContextFewShotExampleSummarizationSectionList?>? summarizationSectionList;

  /// Creates a new [GeneratorSummarizationContextFewShotExample].
  /// [conversationContext] Optional. Conversation transcripts.
  /// [extraInfo] Optional. Key is the placeholder field name in input, value is the value of the placeholder. E.g. instruction contains "@price", and ingested data has &lt;"price", "10"&gt;
  /// [output] Required. Example output of the model.
  /// [summarizationSectionList] Summarization sections.
  const GeneratorSummarizationContextFewShotExample({
    this.conversationContext,
    this.extraInfo,
    required this.output,
    this.summarizationSectionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationContext': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContextFewShotExampleConversationContext, Map<String, dynamic>>(conversationContext, (value) => value.toMap()),
      'extraInfo': ?extraInfo,
      'output': pulumi.Input.mapInputValue<GeneratorSummarizationContextFewShotExampleOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'summarizationSectionList': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContextFewShotExampleSummarizationSectionList, Map<String, dynamic>>(summarizationSectionList, (value) => value.toMap()),
    };
  }

  factory GeneratorSummarizationContextFewShotExample.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExample(
      conversationContext: (() { final guardedValue = map['conversationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleConversationContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extraInfo: (() { final guardedValue = map['extraInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      output: pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleOutput.fromMap((map['output']! as Map).cast<String, dynamic>())),
      summarizationSectionList: (() { final guardedValue = map['summarizationSectionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorSummarizationContextFewShotExampleSummarizationSectionList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
