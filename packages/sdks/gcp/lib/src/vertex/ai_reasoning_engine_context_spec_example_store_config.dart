// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_example_store_config_similarity_search_config.dart';

class AiReasoningEngineContextSpecExampleStoreConfig {
  /// Optional. Configuration for how to perform similarity search on examples.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig>? similaritySearchConfig;

  /// Creates a new [AiReasoningEngineContextSpecExampleStoreConfig].
  /// [similaritySearchConfig] Optional. Configuration for how to perform similarity search on examples.
  const AiReasoningEngineContextSpecExampleStoreConfig({
    this.similaritySearchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'similaritySearchConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig, Map<String, dynamic>>(similaritySearchConfig, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineContextSpecExampleStoreConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecExampleStoreConfig(
      similaritySearchConfig: (() { final guardedValue = map['similaritySearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
