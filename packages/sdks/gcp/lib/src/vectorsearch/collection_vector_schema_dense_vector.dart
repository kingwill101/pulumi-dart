// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_vector_schema_dense_vector_vertex_embedding_config.dart';

class CollectionVectorSchemaDenseVector {
  /// Dimensionality of the vector field.
  final pulumi.Input<int>? dimensions;
  /// Message describing the configuration for generating embeddings for a vector
  /// field using Vertex AI embeddings API.
  /// Structure is documented below.
  final pulumi.Input<CollectionVectorSchemaDenseVectorVertexEmbeddingConfig>? vertexEmbeddingConfig;

  /// Creates a new [CollectionVectorSchemaDenseVector].
  /// [dimensions] Dimensionality of the vector field.
  /// [vertexEmbeddingConfig] Message describing the configuration for generating embeddings for a vector
  const CollectionVectorSchemaDenseVector({
    this.dimensions,
    this.vertexEmbeddingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'vertexEmbeddingConfig': ?pulumi.Input.mapOptionalInputValue<CollectionVectorSchemaDenseVectorVertexEmbeddingConfig, Map<String, dynamic>>(vertexEmbeddingConfig, (value) => value.toMap()),
    };
  }

  factory CollectionVectorSchemaDenseVector.fromMap(Map<String, dynamic> map) {
    return CollectionVectorSchemaDenseVector(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vertexEmbeddingConfig: (() { final guardedValue = map['vertexEmbeddingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectionVectorSchemaDenseVectorVertexEmbeddingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
