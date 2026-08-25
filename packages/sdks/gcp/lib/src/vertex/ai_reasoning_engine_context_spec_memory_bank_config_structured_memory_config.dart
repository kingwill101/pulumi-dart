// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_structured_memory_config_schema_config.dart';

class AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig {
  /// Optional. List of schema configs that this structured memory config applies to.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig>?>? schemaConfigs;
  /// Optional. List of scope keys that this structured memory config applies to.
  final pulumi.Input<List<String>?>? scopeKeys;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig].
  /// [schemaConfigs] Optional. List of schema configs that this structured memory config applies to.
  /// [scopeKeys] Optional. List of scope keys that this structured memory config applies to.
  const AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig({
    this.schemaConfigs,
    this.scopeKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig>, List<Map<String, dynamic>>>(schemaConfigs, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopeKeys': ?scopeKeys,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfig(
      schemaConfigs: (() { final guardedValue = map['schemaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopeKeys: (() { final guardedValue = map['scopeKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
