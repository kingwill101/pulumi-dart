// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_generate_memories_example_conversation_source.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_generate_memories_example_generated_memory.dart';

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample {
  /// A conversation source for the example.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSource?>? conversationSource;
  /// Represents the memories that are expected to be generated from the input conversation.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory>?>? generatedMemories;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample].
  /// [conversationSource] A conversation source for the example.
  /// [generatedMemories] Represents the memories that are expected to be generated from the input conversation.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample({
    this.conversationSource,
    this.generatedMemories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationSource': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSource, Map<String, dynamic>>(conversationSource, (value) => value.toMap()),
      'generatedMemories': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory>, List<Map<String, dynamic>>>(generatedMemories, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample(
      conversationSource: (() { final guardedValue = map['conversationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generatedMemories: (() { final guardedValue = map['generatedMemories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
