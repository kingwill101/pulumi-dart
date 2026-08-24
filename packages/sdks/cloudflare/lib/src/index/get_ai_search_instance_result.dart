// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_custom_metadata.dart';
import 'get_ai_search_instance_filter.dart';
import 'get_ai_search_instance_index_method.dart';
import 'get_ai_search_instance_indexing_options.dart';
import 'get_ai_search_instance_metadata.dart';
import 'get_ai_search_instance_public_endpoint_params.dart';
import 'get_ai_search_instance_retrieval_options.dart';
import 'get_ai_search_instance_source_params.dart';

/// Result data returned by getAiSearchInstance.
class GetAiSearchInstanceResult {
  final String? accountId;
  final String? aiGatewayId;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final String? aisearchModel;
  final bool? cache;
  /// Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  final String? cacheThreshold;
  /// Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
  final double? cacheTtl;
  final int? chunkOverlap;
  final int? chunkSize;
  final String? createdAt;
  final String? createdBy;
  final List<GetAiSearchInstanceCustomMetadata>? customMetadatas;
  /// Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/qwen/qwen3-vl-embedding-2b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  final String? embeddingModel;
  final bool? enable;
  final double? engineVersion;
  final GetAiSearchInstanceFilter? filter;
  /// Available values: "max", "rrf".
  final String? fusionMethod;
  /// Deprecated — use indexMethod instead.
  final bool? hybridSearchEnabled;
  /// The ID of this resource.
  final String? id;
  /// Controls which storage backends are used during indexing. Defaults to vector-only.
  final GetAiSearchInstanceIndexMethod? indexMethod;
  final GetAiSearchInstanceIndexingOptions? indexingOptions;
  final String? lastActivity;
  final int? maxNumResults;
  final GetAiSearchInstanceMetadata? metadata;
  final String? modifiedAt;
  final String? modifiedBy;
  final String? namespace;
  final bool? paused;
  final String? publicEndpointId;
  final GetAiSearchInstancePublicEndpointParams? publicEndpointParams;
  final bool? reranking;
  /// Available values: "@cf/baai/bge-reranker-base", "".
  final String? rerankingModel;
  final GetAiSearchInstanceRetrievalOptions? retrievalOptions;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final String? rewriteModel;
  final bool? rewriteQuery;
  final double? scoreThreshold;
  final String? source;
  final GetAiSearchInstanceSourceParams? sourceParams;
  final String? status;
  /// Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
  final double? syncInterval;
  final String? tokenId;
  /// Available values: "r2", "web-crawler".
  final String? type;

  /// Creates a new [GetAiSearchInstanceResult].
  /// [accountId] Optional.
  /// [aiGatewayId] Optional.
  /// [aisearchModel] Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  /// [cache] Optional.
  /// [cacheThreshold] Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  /// [cacheTtl] Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// [chunkOverlap] Optional.
  /// [chunkSize] Optional.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [customMetadatas] Optional.
  /// [embeddingModel] Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/qwen/qwen3-vl-embedding-2b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  /// [enable] Optional.
  /// [engineVersion] Optional.
  /// [filter] Optional.
  /// [fusionMethod] Available values: "max", "rrf".
  /// [hybridSearchEnabled] Deprecated — use indexMethod instead.
  /// [id] The ID of this resource.
  /// [indexMethod] Controls which storage backends are used during indexing. Defaults to vector-only.
  /// [indexingOptions] Optional.
  /// [lastActivity] Optional.
  /// [maxNumResults] Optional.
  /// [metadata] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [namespace] Optional.
  /// [paused] Optional.
  /// [publicEndpointId] Optional.
  /// [publicEndpointParams] Optional.
  /// [reranking] Optional.
  /// [rerankingModel] Available values: "@cf/baai/bge-reranker-base", "".
  /// [retrievalOptions] Optional.
  /// [rewriteModel] Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  /// [rewriteQuery] Optional.
  /// [scoreThreshold] Optional.
  /// [source] Optional.
  /// [sourceParams] Optional.
  /// [status] Optional.
  /// [syncInterval] Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// [tokenId] Optional.
  /// [type] Available values: "r2", "web-crawler".
  const GetAiSearchInstanceResult({
    this.accountId,
    this.aiGatewayId,
    this.aisearchModel,
    this.cache,
    this.cacheThreshold,
    this.cacheTtl,
    this.chunkOverlap,
    this.chunkSize,
    this.createdAt,
    this.createdBy,
    this.customMetadatas,
    this.embeddingModel,
    this.enable,
    this.engineVersion,
    this.filter,
    this.fusionMethod,
    this.hybridSearchEnabled,
    this.id,
    this.indexMethod,
    this.indexingOptions,
    this.lastActivity,
    this.maxNumResults,
    this.metadata,
    this.modifiedAt,
    this.modifiedBy,
    this.namespace,
    this.paused,
    this.publicEndpointId,
    this.publicEndpointParams,
    this.reranking,
    this.rerankingModel,
    this.retrievalOptions,
    this.rewriteModel,
    this.rewriteQuery,
    this.scoreThreshold,
    this.source,
    this.sourceParams,
    this.status,
    this.syncInterval,
    this.tokenId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aiGatewayId': ?aiGatewayId,
      'aisearchModel': ?aisearchModel,
      'cache': ?cache,
      'cacheThreshold': ?cacheThreshold,
      'cacheTtl': ?cacheTtl,
      'chunkOverlap': ?chunkOverlap,
      'chunkSize': ?chunkSize,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'customMetadatas': ?(() { final guardedValue = customMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiSearchInstanceCustomMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'embeddingModel': ?embeddingModel,
      'enable': ?enable,
      'engineVersion': ?engineVersion,
      'filter': ?filter?.toMap(),
      'fusionMethod': ?fusionMethod,
      'hybridSearchEnabled': ?hybridSearchEnabled,
      'id': ?id,
      'indexMethod': ?indexMethod?.toMap(),
      'indexingOptions': ?indexingOptions?.toMap(),
      'lastActivity': ?lastActivity,
      'maxNumResults': ?maxNumResults,
      'metadata': ?metadata?.toMap(),
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'namespace': ?namespace,
      'paused': ?paused,
      'publicEndpointId': ?publicEndpointId,
      'publicEndpointParams': ?publicEndpointParams?.toMap(),
      'reranking': ?reranking,
      'rerankingModel': ?rerankingModel,
      'retrievalOptions': ?retrievalOptions?.toMap(),
      'rewriteModel': ?rewriteModel,
      'rewriteQuery': ?rewriteQuery,
      'scoreThreshold': ?scoreThreshold,
      'source': ?source,
      'sourceParams': ?sourceParams?.toMap(),
      'status': ?status,
      'syncInterval': ?syncInterval,
      'tokenId': ?tokenId,
      'type': ?type,
    };
  }

  factory GetAiSearchInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aiGatewayId: (() { final guardedValue = map['aiGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aisearchModel: (() { final guardedValue = map['aisearchModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      cacheThreshold: (() { final guardedValue = map['cacheThreshold']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cacheTtl: (() { final guardedValue = map['cacheTtl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      chunkOverlap: (() { final guardedValue = map['chunkOverlap']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      chunkSize: (() { final guardedValue = map['chunkSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customMetadatas: (() { final guardedValue = map['customMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiSearchInstanceCustomMetadata>(guardedValue, (value) => GetAiSearchInstanceCustomMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      embeddingModel: (() { final guardedValue = map['embeddingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAiSearchInstanceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fusionMethod: (() { final guardedValue = map['fusionMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hybridSearchEnabled: (() { final guardedValue = map['hybridSearchEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexMethod: (() { final guardedValue = map['indexMethod']; if (guardedValue == null) return null; return GetAiSearchInstanceIndexMethod.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      indexingOptions: (() { final guardedValue = map['indexingOptions']; if (guardedValue == null) return null; return GetAiSearchInstanceIndexingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastActivity: (() { final guardedValue = map['lastActivity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxNumResults: (() { final guardedValue = map['maxNumResults']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return GetAiSearchInstanceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      publicEndpointId: (() { final guardedValue = map['publicEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicEndpointParams: (() { final guardedValue = map['publicEndpointParams']; if (guardedValue == null) return null; return GetAiSearchInstancePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reranking: (() { final guardedValue = map['reranking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      rerankingModel: (() { final guardedValue = map['rerankingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retrievalOptions: (() { final guardedValue = map['retrievalOptions']; if (guardedValue == null) return null; return GetAiSearchInstanceRetrievalOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rewriteModel: (() { final guardedValue = map['rewriteModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rewriteQuery: (() { final guardedValue = map['rewriteQuery']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scoreThreshold: (() { final guardedValue = map['scoreThreshold']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceParams: (() { final guardedValue = map['sourceParams']; if (guardedValue == null) return null; return GetAiSearchInstanceSourceParams.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncInterval: (() { final guardedValue = map['syncInterval']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
