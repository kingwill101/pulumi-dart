// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_generate_memories_example_generated_memory_topic.dart';

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory {
  /// Represents the fact to generate a memory from.
  final pulumi.Input<String> fact;
  /// Represents the list of topics that the memory should be associated with.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic>?>? topics;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory].
  /// [fact] Represents the fact to generate a memory from.
  /// [topics] Represents the list of topics that the memory should be associated with.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory({
    required this.fact,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fact': fact,
      'topics': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemory(
      fact: pulumi.Input.fromValue(map['fact'] as String),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
