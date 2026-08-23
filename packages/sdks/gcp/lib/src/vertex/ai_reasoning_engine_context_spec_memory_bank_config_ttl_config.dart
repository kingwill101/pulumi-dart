// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_ttl_config_granular_ttl_config.dart';

class AiReasoningEngineContextSpecMemoryBankConfigTtlConfig {
  /// The default TTL duration of the memories in the Memory Bank.
  final pulumi.Input<String>? defaultTtl;
  /// The granular TTL configuration of the memories in the Memory Bank.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig>? granularTtlConfig;
  /// The default TTL duration of the memory revisions in the Memory Bank.
  final pulumi.Input<String>? memoryRevisionDefaultTtl;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigTtlConfig].
  /// [defaultTtl] The default TTL duration of the memories in the Memory Bank.
  /// [granularTtlConfig] The granular TTL configuration of the memories in the Memory Bank.
  /// [memoryRevisionDefaultTtl] The default TTL duration of the memory revisions in the Memory Bank.
  const AiReasoningEngineContextSpecMemoryBankConfigTtlConfig({
    this.defaultTtl,
    this.granularTtlConfig,
    this.memoryRevisionDefaultTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTtl': ?defaultTtl,
      'granularTtlConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig, Map<String, dynamic>>(granularTtlConfig, (value) => value.toMap()),
      'memoryRevisionDefaultTtl': ?memoryRevisionDefaultTtl,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigTtlConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigTtlConfig(
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      granularTtlConfig: (() { final guardedValue = map['granularTtlConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryRevisionDefaultTtl: (() { final guardedValue = map['memoryRevisionDefaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
