// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_generation_config_generation_trigger_config.dart';

class AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig {
  /// Optional. Configuration for triggering memory generation.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig>? generationTriggerConfig;
  /// The model used to generate memories. Format: projects/{project}/locations/{location}/publishers/google/models/{model}.
  final pulumi.Input<String> model;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig].
  /// [generationTriggerConfig] Optional. Configuration for triggering memory generation.
  /// [model] The model used to generate memories. Format: projects/{project}/locations/{location}/publishers/google/models/{model}.
  const AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig({
    this.generationTriggerConfig,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generationTriggerConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig, Map<String, dynamic>>(generationTriggerConfig, (value) => value.toMap()),
      'model': model,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigGenerationConfig(
      generationTriggerConfig: (() { final guardedValue = map['generationTriggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: pulumi.Input.fromValue(map['model'] as String),
    );
  }
}
