// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_generation_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_similarity_search_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_structured_memory_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_ttl_config.dart';

class AiReasoningEngineContextSpecMemoryBankConfig {
  /// Optional. Customization configs for how Agent Engine sub-resources manage context at different scope levels.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig>>? customizationConfigs;
  /// If true, no memory revisions will be created for any requests to the Memory Bank.
  final pulumi.Input<bool>? disableMemoryRevisions;
  /// Configuration for how to generate memories for the Memory Bank.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig>? generationConfig;
  /// Configuration for how to perform similarity search on memories.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig>? similaritySearchConfig;
  /// Optional. Structured memory configurations for Agent Engine sub-resources.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig>>? structuredMemoryConfigs;
  /// Configuration for automatic TTL ("time-to-live") of the memories in the Memory Bank.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigTtlConfig>? ttlConfig;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfig].
  /// [customizationConfigs] Optional. Customization configs for how Agent Engine sub-resources manage context at different scope levels.
  /// [disableMemoryRevisions] If true, no memory revisions will be created for any requests to the Memory Bank.
  /// [generationConfig] Configuration for how to generate memories for the Memory Bank.
  /// [similaritySearchConfig] Configuration for how to perform similarity search on memories.
  /// [structuredMemoryConfigs] Optional. Structured memory configurations for Agent Engine sub-resources.
  /// [ttlConfig] Configuration for automatic TTL ("time-to-live") of the memories in the Memory Bank.
  const AiReasoningEngineContextSpecMemoryBankConfig({
    this.customizationConfigs,
    this.disableMemoryRevisions,
    this.generationConfig,
    this.similaritySearchConfig,
    this.structuredMemoryConfigs,
    this.ttlConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizationConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig>, List<Map<String, dynamic>>>(customizationConfigs, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableMemoryRevisions': ?disableMemoryRevisions,
      'generationConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig, Map<String, dynamic>>(generationConfig, (value) => value.toMap()),
      'similaritySearchConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig, Map<String, dynamic>>(similaritySearchConfig, (value) => value.toMap()),
      'structuredMemoryConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig>, List<Map<String, dynamic>>>(structuredMemoryConfigs, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttlConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigTtlConfig, Map<String, dynamic>>(ttlConfig, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfig(
      customizationConfigs: (() { final guardedValue = map['customizationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disableMemoryRevisions: (() { final guardedValue = map['disableMemoryRevisions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      generationConfig: (() { final guardedValue = map['generationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      similaritySearchConfig: (() { final guardedValue = map['similaritySearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      structuredMemoryConfigs: (() { final guardedValue = map['structuredMemoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ttlConfig: (() { final guardedValue = map['ttlConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigTtlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
