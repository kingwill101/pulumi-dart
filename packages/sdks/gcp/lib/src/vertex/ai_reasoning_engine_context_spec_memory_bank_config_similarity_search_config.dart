// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig {
  /// Required. The Gemini model used to generate embeddings to lookup similar examples.
  final pulumi.Input<String> embeddingModel;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig].
  /// [embeddingModel] Required. The Gemini model used to generate embeddings to lookup similar examples.
  const AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig({
    required this.embeddingModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddingModel': embeddingModel,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig(
      embeddingModel: pulumi.Input.fromValue(map['embeddingModel'] as String),
    );
  }
}
