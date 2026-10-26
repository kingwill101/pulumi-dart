// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_vector_db_config_rag_embedding_model_config_vertex_prediction_endpoint.dart';

class AiRagCorpusVectorDbConfigRagEmbeddingModelConfig {
  /// The Vertex AI Prediction Endpoint used for dense vector search.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint?>? vertexPredictionEndpoint;

  /// Creates a new [AiRagCorpusVectorDbConfigRagEmbeddingModelConfig].
  /// [vertexPredictionEndpoint] The Vertex AI Prediction Endpoint used for dense vector search.
  const AiRagCorpusVectorDbConfigRagEmbeddingModelConfig({
    this.vertexPredictionEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vertexPredictionEndpoint': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint, Map<String, dynamic>>(vertexPredictionEndpoint, (value) => value.toMap()),
    };
  }

  factory AiRagCorpusVectorDbConfigRagEmbeddingModelConfig.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigRagEmbeddingModelConfig(
      vertexPredictionEndpoint: (() { final guardedValue = map['vertexPredictionEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
