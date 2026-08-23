// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig {
  /// The TTL duration for memories uploaded via CreateMemory.
  final pulumi.Input<String>? createTtl;
  /// The TTL duration for memories newly generated via GenerateMemories.
  final pulumi.Input<String>? generateCreatedTtl;
  /// The TTL duration for memories updated via GenerateMemories.
  final pulumi.Input<String>? generateUpdatedTtl;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig].
  /// [createTtl] The TTL duration for memories uploaded via CreateMemory.
  /// [generateCreatedTtl] The TTL duration for memories newly generated via GenerateMemories.
  /// [generateUpdatedTtl] The TTL duration for memories updated via GenerateMemories.
  const AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig({
    this.createTtl,
    this.generateCreatedTtl,
    this.generateUpdatedTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTtl': ?createTtl,
      'generateCreatedTtl': ?generateCreatedTtl,
      'generateUpdatedTtl': ?generateUpdatedTtl,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig(
      createTtl: (() { final guardedValue = map['createTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generateCreatedTtl: (() { final guardedValue = map['generateCreatedTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generateUpdatedTtl: (() { final guardedValue = map['generateUpdatedTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
