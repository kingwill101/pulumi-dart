// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_custom_metadata.dart';
import 'get_ai_search_instances_result_index_method.dart';
import 'get_ai_search_instances_result_indexing_options.dart';
import 'get_ai_search_instances_result_metadata.dart';
import 'get_ai_search_instances_result_public_endpoint_params.dart';
import 'get_ai_search_instances_result_retrieval_options.dart';
import 'get_ai_search_instances_result_source_params.dart';

class GetAiSearchInstancesResult {
  final pulumi.Input<String> aiGatewayId;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final pulumi.Input<String> aisearchModel;
  final pulumi.Input<bool> cache;
  /// Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  final pulumi.Input<String> cacheThreshold;
  /// Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
  final pulumi.Input<double> cacheTtl;
  final pulumi.Input<int> chunkOverlap;
  final pulumi.Input<int> chunkSize;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  final pulumi.Input<List<GetAiSearchInstancesResultCustomMetadata>> customMetadatas;
  /// Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  final pulumi.Input<String> embeddingModel;
  final pulumi.Input<bool> enable;
  final pulumi.Input<double> engineVersion;
  /// Available values: "max", "rrf".
  final pulumi.Input<String> fusionMethod;
  /// Deprecated — use indexMethod instead.
  final pulumi.Input<bool> hybridSearchEnabled;
  /// AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  final pulumi.Input<String> id;
  /// Controls which storage backends are used during indexing. Defaults to vector-only.
  final pulumi.Input<GetAiSearchInstancesResultIndexMethod> indexMethod;
  final pulumi.Input<GetAiSearchInstancesResultIndexingOptions> indexingOptions;
  final pulumi.Input<String> lastActivity;
  final pulumi.Input<int> maxNumResults;
  final pulumi.Input<GetAiSearchInstancesResultMetadata> metadata;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  final pulumi.Input<String> namespace;
  final pulumi.Input<bool> paused;
  final pulumi.Input<String> publicEndpointId;
  final pulumi.Input<GetAiSearchInstancesResultPublicEndpointParams> publicEndpointParams;
  final pulumi.Input<bool> reranking;
  /// Available values: "@cf/baai/bge-reranker-base", "".
  final pulumi.Input<String> rerankingModel;
  final pulumi.Input<GetAiSearchInstancesResultRetrievalOptions> retrievalOptions;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final pulumi.Input<String> rewriteModel;
  final pulumi.Input<bool> rewriteQuery;
  final pulumi.Input<double> scoreThreshold;
  final pulumi.Input<String> source;
  final pulumi.Input<GetAiSearchInstancesResultSourceParams> sourceParams;
  final pulumi.Input<String> status;
  /// Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
  final pulumi.Input<double> syncInterval;
  final pulumi.Input<String> tokenId;
  /// Available values: "r2", "web-crawler".
  final pulumi.Input<String> type;

  /// Creates a new [GetAiSearchInstancesResult].
  /// [aiGatewayId] Required.
  /// [aisearchModel] Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  /// [cache] Required.
  /// [cacheThreshold] Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  /// [cacheTtl] Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// [chunkOverlap] Required.
  /// [chunkSize] Required.
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [customMetadatas] Required.
  /// [embeddingModel] Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  /// [enable] Required.
  /// [engineVersion] Required.
  /// [fusionMethod] Available values: "max", "rrf".
  /// [hybridSearchEnabled] Deprecated — use indexMethod instead.
  /// [id] AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  /// [indexMethod] Controls which storage backends are used during indexing. Defaults to vector-only.
  /// [indexingOptions] Required.
  /// [lastActivity] Required.
  /// [maxNumResults] Required.
  /// [metadata] Required.
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [namespace] Required.
  /// [paused] Required.
  /// [publicEndpointId] Required.
  /// [publicEndpointParams] Required.
  /// [reranking] Required.
  /// [rerankingModel] Available values: "@cf/baai/bge-reranker-base", "".
  /// [retrievalOptions] Required.
  /// [rewriteModel] Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  /// [rewriteQuery] Required.
  /// [scoreThreshold] Required.
  /// [source] Required.
  /// [sourceParams] Required.
  /// [status] Required.
  /// [syncInterval] Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// [tokenId] Required.
  /// [type] Available values: "r2", "web-crawler".
  const GetAiSearchInstancesResult({
    required this.aiGatewayId,
    required this.aisearchModel,
    required this.cache,
    required this.cacheThreshold,
    required this.cacheTtl,
    required this.chunkOverlap,
    required this.chunkSize,
    required this.createdAt,
    required this.createdBy,
    required this.customMetadatas,
    required this.embeddingModel,
    required this.enable,
    required this.engineVersion,
    required this.fusionMethod,
    required this.hybridSearchEnabled,
    required this.id,
    required this.indexMethod,
    required this.indexingOptions,
    required this.lastActivity,
    required this.maxNumResults,
    required this.metadata,
    required this.modifiedAt,
    required this.modifiedBy,
    required this.namespace,
    required this.paused,
    required this.publicEndpointId,
    required this.publicEndpointParams,
    required this.reranking,
    required this.rerankingModel,
    required this.retrievalOptions,
    required this.rewriteModel,
    required this.rewriteQuery,
    required this.scoreThreshold,
    required this.source,
    required this.sourceParams,
    required this.status,
    required this.syncInterval,
    required this.tokenId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiGatewayId': aiGatewayId,
      'aisearchModel': aisearchModel,
      'cache': cache,
      'cacheThreshold': cacheThreshold,
      'cacheTtl': cacheTtl,
      'chunkOverlap': chunkOverlap,
      'chunkSize': chunkSize,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'customMetadatas': pulumi.Input.mapInputValue<List<GetAiSearchInstancesResultCustomMetadata>, List<Map<String, dynamic>>>(customMetadatas, (value) => pulumi.Input.encodeList<GetAiSearchInstancesResultCustomMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'embeddingModel': embeddingModel,
      'enable': enable,
      'engineVersion': engineVersion,
      'fusionMethod': fusionMethod,
      'hybridSearchEnabled': hybridSearchEnabled,
      'id': id,
      'indexMethod': pulumi.Input.mapInputValue<GetAiSearchInstancesResultIndexMethod, Map<String, dynamic>>(indexMethod, (value) => value.toMap()),
      'indexingOptions': pulumi.Input.mapInputValue<GetAiSearchInstancesResultIndexingOptions, Map<String, dynamic>>(indexingOptions, (value) => value.toMap()),
      'lastActivity': lastActivity,
      'maxNumResults': maxNumResults,
      'metadata': pulumi.Input.mapInputValue<GetAiSearchInstancesResultMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'modifiedAt': modifiedAt,
      'modifiedBy': modifiedBy,
      'namespace': namespace,
      'paused': paused,
      'publicEndpointId': publicEndpointId,
      'publicEndpointParams': pulumi.Input.mapInputValue<GetAiSearchInstancesResultPublicEndpointParams, Map<String, dynamic>>(publicEndpointParams, (value) => value.toMap()),
      'reranking': reranking,
      'rerankingModel': rerankingModel,
      'retrievalOptions': pulumi.Input.mapInputValue<GetAiSearchInstancesResultRetrievalOptions, Map<String, dynamic>>(retrievalOptions, (value) => value.toMap()),
      'rewriteModel': rewriteModel,
      'rewriteQuery': rewriteQuery,
      'scoreThreshold': scoreThreshold,
      'source': source,
      'sourceParams': pulumi.Input.mapInputValue<GetAiSearchInstancesResultSourceParams, Map<String, dynamic>>(sourceParams, (value) => value.toMap()),
      'status': status,
      'syncInterval': syncInterval,
      'tokenId': tokenId,
      'type': type,
    };
  }

  factory GetAiSearchInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResult(
      aiGatewayId: pulumi.Input.fromValue(map['aiGatewayId'] as String),
      aisearchModel: pulumi.Input.fromValue(map['aisearchModel'] as String),
      cache: pulumi.Input.fromValue(map['cache'] as bool),
      cacheThreshold: pulumi.Input.fromValue(map['cacheThreshold'] as String),
      cacheTtl: pulumi.Input.fromValue((map['cacheTtl'] as num).toDouble()),
      chunkOverlap: pulumi.Input.fromValue((map['chunkOverlap'] as num).toInt()),
      chunkSize: pulumi.Input.fromValue((map['chunkSize'] as num).toInt()),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      customMetadatas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiSearchInstancesResultCustomMetadata>(map['customMetadatas']!, (value) => GetAiSearchInstancesResultCustomMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      embeddingModel: pulumi.Input.fromValue(map['embeddingModel'] as String),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      engineVersion: pulumi.Input.fromValue((map['engineVersion'] as num).toDouble()),
      fusionMethod: pulumi.Input.fromValue(map['fusionMethod'] as String),
      hybridSearchEnabled: pulumi.Input.fromValue(map['hybridSearchEnabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexMethod: pulumi.Input.fromValue(GetAiSearchInstancesResultIndexMethod.fromMap((map['indexMethod']! as Map).cast<String, dynamic>())),
      indexingOptions: pulumi.Input.fromValue(GetAiSearchInstancesResultIndexingOptions.fromMap((map['indexingOptions']! as Map).cast<String, dynamic>())),
      lastActivity: pulumi.Input.fromValue(map['lastActivity'] as String),
      maxNumResults: pulumi.Input.fromValue((map['maxNumResults'] as num).toInt()),
      metadata: pulumi.Input.fromValue(GetAiSearchInstancesResultMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      publicEndpointId: pulumi.Input.fromValue(map['publicEndpointId'] as String),
      publicEndpointParams: pulumi.Input.fromValue(GetAiSearchInstancesResultPublicEndpointParams.fromMap((map['publicEndpointParams']! as Map).cast<String, dynamic>())),
      reranking: pulumi.Input.fromValue(map['reranking'] as bool),
      rerankingModel: pulumi.Input.fromValue(map['rerankingModel'] as String),
      retrievalOptions: pulumi.Input.fromValue(GetAiSearchInstancesResultRetrievalOptions.fromMap((map['retrievalOptions']! as Map).cast<String, dynamic>())),
      rewriteModel: pulumi.Input.fromValue(map['rewriteModel'] as String),
      rewriteQuery: pulumi.Input.fromValue(map['rewriteQuery'] as bool),
      scoreThreshold: pulumi.Input.fromValue((map['scoreThreshold'] as num).toDouble()),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceParams: pulumi.Input.fromValue(GetAiSearchInstancesResultSourceParams.fromMap((map['sourceParams']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
      syncInterval: pulumi.Input.fromValue((map['syncInterval'] as num).toDouble()),
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
