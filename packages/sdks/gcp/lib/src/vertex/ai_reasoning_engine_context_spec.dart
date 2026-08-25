// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_example_store_config.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config.dart';

class AiReasoningEngineContextSpec {
  /// (Optional, Beta)
  /// Optional. Specification for an Example Store, which manages few-shot examples for the Agent Engine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecExampleStoreConfig?>? exampleStoreConfig;
  /// Specification for a Memory Bank, which manages memories for the Agent Engine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfig?>? memoryBankConfig;

  /// Creates a new [AiReasoningEngineContextSpec].
  /// [exampleStoreConfig] (Optional, Beta)
  /// [memoryBankConfig] Specification for a Memory Bank, which manages memories for the Agent Engine.
  const AiReasoningEngineContextSpec({
    this.exampleStoreConfig,
    this.memoryBankConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exampleStoreConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecExampleStoreConfig, Map<String, dynamic>>(exampleStoreConfig, (value) => value.toMap()),
      'memoryBankConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfig, Map<String, dynamic>>(memoryBankConfig, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineContextSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpec(
      exampleStoreConfig: (() { final guardedValue = map['exampleStoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecExampleStoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryBankConfig: (() { final guardedValue = map['memoryBankConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
