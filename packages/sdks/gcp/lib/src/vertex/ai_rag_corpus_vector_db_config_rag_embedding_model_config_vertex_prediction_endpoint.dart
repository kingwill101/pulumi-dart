// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint {
  /// Required. The endpoint resource name. Format:
  /// projects/{project}/locations/{location}/publishers/{publisher}/models/{model}
  /// or projects/{project}/locations/{location}/endpoints/{endpoint}.
  final pulumi.Input<String> endpoint;
  /// (Output)
  /// Output only. The resource name of the model that is deployed on the endpoint.
  final pulumi.Input<String?>? model;
  /// (Output)
  /// Output only. Version ID of the model that is deployed on the endpoint.
  final pulumi.Input<String?>? modelVersionId;

  /// Creates a new [AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint].
  /// [endpoint] Required. The endpoint resource name. Format:
  /// [model] (Output)
  /// [modelVersionId] (Output)
  const AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint({
    required this.endpoint,
    this.model,
    this.modelVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'model': ?model,
      'modelVersionId': ?modelVersionId,
    };
  }

  factory AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpoint(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelVersionId: (() { final guardedValue = map['modelVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
