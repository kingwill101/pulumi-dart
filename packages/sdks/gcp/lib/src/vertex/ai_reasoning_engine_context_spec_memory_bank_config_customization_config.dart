// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_consolidation_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_memory_topic.dart';

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig {
  /// Optional. Configuration for how many memory revisions Memory Bank considers when consolidating each memory candidate.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig?>? consolidationConfig;
  /// Optional. Generate memories in the third person if set to true.
  final pulumi.Input<bool?>? enableThirdPersonMemories;
  /// Optional. List of topics that the memory should be associated with.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic>?>? memoryTopics;
  /// Optional. List of scope keys that this customization config applies to.
  final pulumi.Input<List<String>?>? scopeKeys;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig].
  /// [consolidationConfig] Optional. Configuration for how many memory revisions Memory Bank considers when consolidating each memory candidate.
  /// [enableThirdPersonMemories] Optional. Generate memories in the third person if set to true.
  /// [memoryTopics] Optional. List of topics that the memory should be associated with.
  /// [scopeKeys] Optional. List of scope keys that this customization config applies to.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig({
    this.consolidationConfig,
    this.enableThirdPersonMemories,
    this.memoryTopics,
    this.scopeKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consolidationConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig, Map<String, dynamic>>(consolidationConfig, (value) => value.toMap()),
      'enableThirdPersonMemories': ?enableThirdPersonMemories,
      'memoryTopics': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic>, List<Map<String, dynamic>>>(memoryTopics, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopeKeys': ?scopeKeys,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig(
      consolidationConfig: (() { final guardedValue = map['consolidationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableThirdPersonMemories: (() { final guardedValue = map['enableThirdPersonMemories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      memoryTopics: (() { final guardedValue = map['memoryTopics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopeKeys: (() { final guardedValue = map['scopeKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
