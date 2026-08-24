// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_custom_metadata.dart';
import 'ai_search_instance_index_method.dart';
import 'ai_search_instance_indexing_options.dart';
import 'ai_search_instance_metadata.dart';
import 'ai_search_instance_public_endpoint_params.dart';
import 'ai_search_instance_retrieval_options.dart';
import 'ai_search_instance_source_params.dart';

/// Input properties used for looking up and filtering AiSearchInstance resources.
class AiSearchInstanceState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? aiGatewayId;
  /// AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  final pulumi.Input<String?>? aiSearchInstanceId;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final pulumi.Input<String?>? aisearchModel;
  final pulumi.Input<bool?>? cache;
  /// Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  final pulumi.Input<String?>? cacheThreshold;
  /// Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
  final pulumi.Input<double?>? cacheTtl;
  final pulumi.Input<bool?>? chunk;
  final pulumi.Input<int?>? chunkOverlap;
  final pulumi.Input<int?>? chunkSize;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? createdBy;
  final pulumi.Input<List<AiSearchInstanceCustomMetadata>?>? customMetadatas;
  /// Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  final pulumi.Input<String?>? embeddingModel;
  final pulumi.Input<bool?>? enable;
  final pulumi.Input<double?>? engineVersion;
  /// Available values: "max", "rrf".
  final pulumi.Input<String?>? fusionMethod;
  /// Deprecated — use indexMethod instead.
  final pulumi.Input<bool?>? hybridSearchEnabled;
  /// Controls which storage backends are used during indexing. Defaults to vector-only.
  final pulumi.Input<AiSearchInstanceIndexMethod?>? indexMethod;
  final pulumi.Input<AiSearchInstanceIndexingOptions?>? indexingOptions;
  final pulumi.Input<String?>? lastActivity;
  final pulumi.Input<int?>? maxNumResults;
  final pulumi.Input<AiSearchInstanceMetadata?>? metadata;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? modifiedBy;
  final pulumi.Input<String?>? namespace;
  final pulumi.Input<bool?>? paused;
  final pulumi.Input<String?>? publicEndpointId;
  final pulumi.Input<AiSearchInstancePublicEndpointParams?>? publicEndpointParams;
  final pulumi.Input<bool?>? reranking;
  /// Available values: "@cf/baai/bge-reranker-base", "".
  final pulumi.Input<String?>? rerankingModel;
  final pulumi.Input<AiSearchInstanceRetrievalOptions?>? retrievalOptions;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final pulumi.Input<String?>? rewriteModel;
  final pulumi.Input<bool?>? rewriteQuery;
  final pulumi.Input<double?>? scoreThreshold;
  final pulumi.Input<String?>? source;
  final pulumi.Input<AiSearchInstanceSourceParams?>? sourceParams;
  final pulumi.Input<String?>? status;
  final pulumi.Input<bool?>? summarization;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  final pulumi.Input<String?>? summarizationModel;
  /// Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
  final pulumi.Input<double?>? syncInterval;
  final pulumi.Input<String?>? systemPromptAisearch;
  final pulumi.Input<String?>? systemPromptIndexSummarization;
  final pulumi.Input<String?>? systemPromptRewriteQuery;
  final pulumi.Input<String?>? tokenId;
  /// Available values: "r2", "web-crawler".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? vectorizeName;

  /// Creates a new [AiSearchInstanceState].
  /// [accountId] Optional.
  /// [aiGatewayId] Optional.
  /// [aiSearchInstanceId] AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  /// [aisearchModel] Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  /// [cache] Optional.
  /// [cacheThreshold] Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  /// [cacheTtl] Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// [chunk] Optional.
  /// [chunkOverlap] Optional.
  /// [chunkSize] Optional.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [customMetadatas] Optional.
  /// [embeddingModel] Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  /// [enable] Optional.
  /// [engineVersion] Optional.
  /// [fusionMethod] Available values: "max", "rrf".
  /// [hybridSearchEnabled] Deprecated — use indexMethod instead.
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
  /// [summarization] Optional.
  /// [summarizationModel] Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  /// [syncInterval] Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// [systemPromptAisearch] Optional.
  /// [systemPromptIndexSummarization] Optional.
  /// [systemPromptRewriteQuery] Optional.
  /// [tokenId] Optional.
  /// [type] Available values: "r2", "web-crawler".
  /// [vectorizeName] Optional.
  const AiSearchInstanceState({
    this.accountId,
    this.aiGatewayId,
    this.aiSearchInstanceId,
    this.aisearchModel,
    this.cache,
    this.cacheThreshold,
    this.cacheTtl,
    this.chunk,
    this.chunkOverlap,
    this.chunkSize,
    this.createdAt,
    this.createdBy,
    this.customMetadatas,
    this.embeddingModel,
    this.enable,
    this.engineVersion,
    this.fusionMethod,
    this.hybridSearchEnabled,
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
    this.summarization,
    this.summarizationModel,
    this.syncInterval,
    this.systemPromptAisearch,
    this.systemPromptIndexSummarization,
    this.systemPromptRewriteQuery,
    this.tokenId,
    this.type,
    this.vectorizeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aiGatewayId': ?aiGatewayId,
      'aiSearchInstanceId': ?aiSearchInstanceId,
      'aisearchModel': ?aisearchModel,
      'cache': ?cache,
      'cacheThreshold': ?cacheThreshold,
      'cacheTtl': ?cacheTtl,
      'chunk': ?chunk,
      'chunkOverlap': ?chunkOverlap,
      'chunkSize': ?chunkSize,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'customMetadatas': ?pulumi.Input.mapOptionalInputValue<List<AiSearchInstanceCustomMetadata>, List<Map<String, dynamic>>>(customMetadatas, (value) => pulumi.Input.encodeList<AiSearchInstanceCustomMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'embeddingModel': ?embeddingModel,
      'enable': ?enable,
      'engineVersion': ?engineVersion,
      'fusionMethod': ?fusionMethod,
      'hybridSearchEnabled': ?hybridSearchEnabled,
      'indexMethod': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceIndexMethod, Map<String, dynamic>>(indexMethod, (value) => value.toMap()),
      'indexingOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceIndexingOptions, Map<String, dynamic>>(indexingOptions, (value) => value.toMap()),
      'lastActivity': ?lastActivity,
      'maxNumResults': ?maxNumResults,
      'metadata': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'namespace': ?namespace,
      'paused': ?paused,
      'publicEndpointId': ?publicEndpointId,
      'publicEndpointParams': ?pulumi.Input.mapOptionalInputValue<AiSearchInstancePublicEndpointParams, Map<String, dynamic>>(publicEndpointParams, (value) => value.toMap()),
      'reranking': ?reranking,
      'rerankingModel': ?rerankingModel,
      'retrievalOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceRetrievalOptions, Map<String, dynamic>>(retrievalOptions, (value) => value.toMap()),
      'rewriteModel': ?rewriteModel,
      'rewriteQuery': ?rewriteQuery,
      'scoreThreshold': ?scoreThreshold,
      'source': ?source,
      'sourceParams': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParams, Map<String, dynamic>>(sourceParams, (value) => value.toMap()),
      'status': ?status,
      'summarization': ?summarization,
      'summarizationModel': ?summarizationModel,
      'syncInterval': ?syncInterval,
      'systemPromptAisearch': ?systemPromptAisearch,
      'systemPromptIndexSummarization': ?systemPromptIndexSummarization,
      'systemPromptRewriteQuery': ?systemPromptRewriteQuery,
      'tokenId': ?tokenId,
      'type': ?type,
      'vectorizeName': ?vectorizeName,
    };
  }

  factory AiSearchInstanceState.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiGatewayId: (() { final guardedValue = map['aiGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiSearchInstanceId: (() { final guardedValue = map['aiSearchInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aisearchModel: (() { final guardedValue = map['aisearchModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheThreshold: (() { final guardedValue = map['cacheThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheTtl: (() { final guardedValue = map['cacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      chunk: (() { final guardedValue = map['chunk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      chunkOverlap: (() { final guardedValue = map['chunkOverlap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      chunkSize: (() { final guardedValue = map['chunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customMetadatas: (() { final guardedValue = map['customMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSearchInstanceCustomMetadata>(guardedValue, (value) => AiSearchInstanceCustomMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      embeddingModel: (() { final guardedValue = map['embeddingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      fusionMethod: (() { final guardedValue = map['fusionMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridSearchEnabled: (() { final guardedValue = map['hybridSearchEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      indexMethod: (() { final guardedValue = map['indexMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceIndexMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      indexingOptions: (() { final guardedValue = map['indexingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceIndexingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastActivity: (() { final guardedValue = map['lastActivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxNumResults: (() { final guardedValue = map['maxNumResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicEndpointId: (() { final guardedValue = map['publicEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicEndpointParams: (() { final guardedValue = map['publicEndpointParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstancePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reranking: (() { final guardedValue = map['reranking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rerankingModel: (() { final guardedValue = map['rerankingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retrievalOptions: (() { final guardedValue = map['retrievalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceRetrievalOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rewriteModel: (() { final guardedValue = map['rewriteModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteQuery: (() { final guardedValue = map['rewriteQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scoreThreshold: (() { final guardedValue = map['scoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceParams: (() { final guardedValue = map['sourceParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summarization: (() { final guardedValue = map['summarization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      summarizationModel: (() { final guardedValue = map['summarizationModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncInterval: (() { final guardedValue = map['syncInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      systemPromptAisearch: (() { final guardedValue = map['systemPromptAisearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemPromptIndexSummarization: (() { final guardedValue = map['systemPromptIndexSummarization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemPromptRewriteQuery: (() { final guardedValue = map['systemPromptRewriteQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorizeName: (() { final guardedValue = map['vectorizeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
