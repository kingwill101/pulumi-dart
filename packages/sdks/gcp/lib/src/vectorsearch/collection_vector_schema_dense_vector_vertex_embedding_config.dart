// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectionVectorSchemaDenseVectorVertexEmbeddingConfig {
  /// Required: ID of the embedding model to use. See
  /// https://cloud.google.com/vertex-ai/generative-ai/docs/learn/models#embeddings-models
  /// for the list of supported models.
  final pulumi.Input<String> modelId;
  /// Possible values:
  /// RETRIEVAL_QUERY
  /// RETRIEVAL_DOCUMENT
  /// SEMANTIC_SIMILARITY
  /// CLASSIFICATION
  /// CLUSTERING
  /// QUESTION_ANSWERING
  /// FACT_VERIFICATION
  /// CODE_RETRIEVAL_QUERY
  final pulumi.Input<String> taskType;
  /// Required: Text template for the input to the model. The template must
  /// contain one or more references to fields in the DataObject, e.g.:
  /// "Movie Title: {title} ---- Movie Plot: {plot}".
  final pulumi.Input<String> textTemplate;

  /// Creates a new [CollectionVectorSchemaDenseVectorVertexEmbeddingConfig].
  /// [modelId] Required: ID of the embedding model to use. See
  /// [taskType] Possible values:
  /// [textTemplate] Required: Text template for the input to the model. The template must
  const CollectionVectorSchemaDenseVectorVertexEmbeddingConfig({
    required this.modelId,
    required this.taskType,
    required this.textTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'taskType': taskType,
      'textTemplate': textTemplate,
    };
  }

  factory CollectionVectorSchemaDenseVectorVertexEmbeddingConfig.fromMap(Map<String, dynamic> map) {
    return CollectionVectorSchemaDenseVectorVertexEmbeddingConfig(
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      textTemplate: pulumi.Input.fromValue(map['textTemplate'] as String),
    );
  }
}
