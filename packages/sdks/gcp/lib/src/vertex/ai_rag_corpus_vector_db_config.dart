// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_vector_db_config_api_auth.dart';
import 'ai_rag_corpus_vector_db_config_pinecone.dart';
import 'ai_rag_corpus_vector_db_config_rag_embedding_model_config.dart';
import 'ai_rag_corpus_vector_db_config_rag_managed_db.dart';
import 'ai_rag_corpus_vector_db_config_vertex_vector_search.dart';

class AiRagCorpusVectorDbConfig {
  /// Authentication config for the chosen Vector DB.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigApiAuth?>? apiAuth;
  /// The config for the Pinecone.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigPinecone?>? pinecone;
  /// Optional. Immutable. The embedding model config of the Vector DB.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigRagEmbeddingModelConfig?>? ragEmbeddingModelConfig;
  /// The config for the default RAG-managed Vector DB.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigRagManagedDb?>? ragManagedDb;
  /// The config for the Vertex Vector Search.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigVertexVectorSearch?>? vertexVectorSearch;

  /// Creates a new [AiRagCorpusVectorDbConfig].
  /// [apiAuth] Authentication config for the chosen Vector DB.
  /// [pinecone] The config for the Pinecone.
  /// [ragEmbeddingModelConfig] Optional. Immutable. The embedding model config of the Vector DB.
  /// [ragManagedDb] The config for the default RAG-managed Vector DB.
  /// [vertexVectorSearch] The config for the Vertex Vector Search.
  const AiRagCorpusVectorDbConfig({
    this.apiAuth,
    this.pinecone,
    this.ragEmbeddingModelConfig,
    this.ragManagedDb,
    this.vertexVectorSearch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAuth': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigApiAuth, Map<String, dynamic>>(apiAuth, (value) => value.toMap()),
      'pinecone': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigPinecone, Map<String, dynamic>>(pinecone, (value) => value.toMap()),
      'ragEmbeddingModelConfig': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigRagEmbeddingModelConfig, Map<String, dynamic>>(ragEmbeddingModelConfig, (value) => value.toMap()),
      'ragManagedDb': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigRagManagedDb, Map<String, dynamic>>(ragManagedDb, (value) => value.toMap()),
      'vertexVectorSearch': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigVertexVectorSearch, Map<String, dynamic>>(vertexVectorSearch, (value) => value.toMap()),
    };
  }

  factory AiRagCorpusVectorDbConfig.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfig(
      apiAuth: (() { final guardedValue = map['apiAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigApiAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pinecone: (() { final guardedValue = map['pinecone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigPinecone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ragEmbeddingModelConfig: (() { final guardedValue = map['ragEmbeddingModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigRagEmbeddingModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ragManagedDb: (() { final guardedValue = map['ragManagedDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigRagManagedDb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vertexVectorSearch: (() { final guardedValue = map['vertexVectorSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigVertexVectorSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
