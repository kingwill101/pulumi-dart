// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_consolidation_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_generate_memories_example.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_memory_topic.dart';

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig {
  /// Optional. Configuration for how many memory revisions Memory Bank considers when consolidating each memory candidate.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig?>? consolidationConfig;
  /// Indicates whether natural language memory generation should be disabled.
  final pulumi.Input<bool?>? disableNaturalLanguageMemories;
  /// Optional. Generate memories in the third person if set to true.
  final pulumi.Input<bool?>? enableThirdPersonMemories;
  /// Provides examples of how to generate memories for a particular scope.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample>?>? generateMemoriesExamples;
  /// Optional. List of topics that the memory should be associated with.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic>?>? memoryTopics;
  /// Optional. List of scope keys that this customization config applies to.
  final pulumi.Input<List<String>?>? scopeKeys;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig].
  /// [consolidationConfig] Optional. Configuration for how many memory revisions Memory Bank considers when consolidating each memory candidate.
  /// [disableNaturalLanguageMemories] Indicates whether natural language memory generation should be disabled.
  /// [enableThirdPersonMemories] Optional. Generate memories in the third person if set to true.
  /// [generateMemoriesExamples] Provides examples of how to generate memories for a particular scope.
  /// [memoryTopics] Optional. List of topics that the memory should be associated with.
  /// [scopeKeys] Optional. List of scope keys that this customization config applies to.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig({
    this.consolidationConfig,
    this.disableNaturalLanguageMemories,
    this.enableThirdPersonMemories,
    this.generateMemoriesExamples,
    this.memoryTopics,
    this.scopeKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consolidationConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig, Map<String, dynamic>>(consolidationConfig, (value) => value.toMap()),
      'disableNaturalLanguageMemories': ?disableNaturalLanguageMemories,
      'enableThirdPersonMemories': ?enableThirdPersonMemories,
      'generateMemoriesExamples': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample>, List<Map<String, dynamic>>>(generateMemoriesExamples, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryTopics': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic>, List<Map<String, dynamic>>>(memoryTopics, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopeKeys': ?scopeKeys,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig(
      consolidationConfig: (() { final guardedValue = map['consolidationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableNaturalLanguageMemories: (() { final guardedValue = map['disableNaturalLanguageMemories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableThirdPersonMemories: (() { final guardedValue = map['enableThirdPersonMemories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      generateMemoriesExamples: (() { final guardedValue = map['generateMemoriesExamples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memoryTopics: (() { final guardedValue = map['memoryTopics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopeKeys: (() { final guardedValue = map['scopeKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
