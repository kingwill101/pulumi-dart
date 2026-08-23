// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig {
  /// Required. The Gemini model used to generate embeddings to lookup similar examples.
  final pulumi.Input<String> embeddingModel;

  /// Creates a new [AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig].
  /// [embeddingModel] Required. The Gemini model used to generate embeddings to lookup similar examples.
  const AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig({
    required this.embeddingModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddingModel': embeddingModel,
    };
  }

  factory AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecExampleStoreConfigSimilaritySearchConfig(
      embeddingModel: pulumi.Input.fromValue(map['embeddingModel'] as String),
    );
  }
}
