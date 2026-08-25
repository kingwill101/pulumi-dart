// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_generation_config_generation_trigger_config_generation_rule.dart';

class AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig {
  /// Optional. The active rule that determines when to flush the buffer. If not set,
  /// then the stream will be force flushed immediately.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule?>? generationRule;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig].
  /// [generationRule] Optional. The active rule that determines when to flush the buffer. If not set,
  const AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig({
    this.generationRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generationRule': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule, Map<String, dynamic>>(generationRule, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig(
      generationRule: (() { final guardedValue = map['generationRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
