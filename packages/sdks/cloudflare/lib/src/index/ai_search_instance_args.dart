// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_custom_metadata.dart';
import 'ai_search_instance_index_method.dart';
import 'ai_search_instance_indexing_options.dart';
import 'ai_search_instance_metadata.dart';
import 'ai_search_instance_public_endpoint_params.dart';
import 'ai_search_instance_retrieval_options.dart';
import 'ai_search_instance_source_params.dart';

/// {@template pulumi_index_ai_search_instance_ai_search_instance_args_doc}
/// The set of arguments for AiSearchInstance.
/// {@endtemplate}
/// {@macro pulumi_index_ai_search_instance_ai_search_instance_args_doc}
class AiSearchInstanceArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? aiGatewayId;
  /// AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  final pulumi.Input<String> aiSearchInstanceId;
  /// A Workers AI model ID or an AI Gateway model ID compatible with the OpenAI Chat Completions API. An empty string uses the configured or default model.
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
  final pulumi.Input<List<AiSearchInstanceCustomMetadata>?>? customMetadatas;
  final pulumi.Input<String?>? embeddingModel;
  /// Available values: "max", "rrf".
  final pulumi.Input<String?>? fusionMethod;
  /// Deprecated — use indexMethod instead.
  final pulumi.Input<bool?>? hybridSearchEnabled;
  /// Controls which storage backends are used during indexing. Defaults to vector-only.
  final pulumi.Input<AiSearchInstanceIndexMethod?>? indexMethod;
  final pulumi.Input<AiSearchInstanceIndexingOptions?>? indexingOptions;
  final pulumi.Input<int?>? maxNumResults;
  final pulumi.Input<AiSearchInstanceMetadata?>? metadata;
  final pulumi.Input<bool?>? paused;
  final pulumi.Input<AiSearchInstancePublicEndpointParams?>? publicEndpointParams;
  final pulumi.Input<bool?>? reranking;
  final pulumi.Input<String?>? rerankingModel;
  final pulumi.Input<AiSearchInstanceRetrievalOptions?>? retrievalOptions;
  /// A Workers AI model ID or an AI Gateway model ID compatible with the OpenAI Chat Completions API. An empty string uses the configured or default model.
  final pulumi.Input<String?>? rewriteModel;
  final pulumi.Input<bool?>? rewriteQuery;
  final pulumi.Input<double?>? scoreThreshold;
  final pulumi.Input<String?>? source;
  final pulumi.Input<AiSearchInstanceSourceParams?>? sourceParams;
  final pulumi.Input<bool?>? summarization;
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

  /// Creates a new [AiSearchInstanceArgs].
  /// [accountId] Required.
  /// [aiGatewayId] Optional.
  /// [aiSearchInstanceId] AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  /// [aisearchModel] A Workers AI model ID or an AI Gateway model ID compatible with the OpenAI Chat Completions API. An empty string uses the configured or default model.
  /// [cache] Optional.
  /// [cacheThreshold] Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  /// [cacheTtl] Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// [chunk] Optional.
  /// [chunkOverlap] Optional.
  /// [chunkSize] Optional.
  /// [customMetadatas] Optional.
  /// [embeddingModel] Optional.
  /// [fusionMethod] Available values: "max", "rrf".
  /// [hybridSearchEnabled] Deprecated — use indexMethod instead.
  /// [indexMethod] Controls which storage backends are used during indexing. Defaults to vector-only.
  /// [indexingOptions] Optional.
  /// [maxNumResults] Optional.
  /// [metadata] Optional.
  /// [paused] Optional.
  /// [publicEndpointParams] Optional.
  /// [reranking] Optional.
  /// [rerankingModel] Optional.
  /// [retrievalOptions] Optional.
  /// [rewriteModel] A Workers AI model ID or an AI Gateway model ID compatible with the OpenAI Chat Completions API. An empty string uses the configured or default model.
  /// [rewriteQuery] Optional.
  /// [scoreThreshold] Optional.
  /// [source] Optional.
  /// [sourceParams] Optional.
  /// [summarization] Optional.
  /// [summarizationModel] Optional.
  /// [syncInterval] Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// [systemPromptAisearch] Optional.
  /// [systemPromptIndexSummarization] Optional.
  /// [systemPromptRewriteQuery] Optional.
  /// [tokenId] Optional.
  /// [type] Available values: "r2", "web-crawler".
  const AiSearchInstanceArgs({
    required this.accountId,
    this.aiGatewayId,
    required this.aiSearchInstanceId,
    this.aisearchModel,
    this.cache,
    this.cacheThreshold,
    this.cacheTtl,
    this.chunk,
    this.chunkOverlap,
    this.chunkSize,
    this.customMetadatas,
    this.embeddingModel,
    this.fusionMethod,
    this.hybridSearchEnabled,
    this.indexMethod,
    this.indexingOptions,
    this.maxNumResults,
    this.metadata,
    this.paused,
    this.publicEndpointParams,
    this.reranking,
    this.rerankingModel,
    this.retrievalOptions,
    this.rewriteModel,
    this.rewriteQuery,
    this.scoreThreshold,
    this.source,
    this.sourceParams,
    this.summarization,
    this.summarizationModel,
    this.syncInterval,
    this.systemPromptAisearch,
    this.systemPromptIndexSummarization,
    this.systemPromptRewriteQuery,
    this.tokenId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aiGatewayId': ?aiGatewayId,
      'aiSearchInstanceId': aiSearchInstanceId,
      'aisearchModel': ?aisearchModel,
      'cache': ?cache,
      'cacheThreshold': ?cacheThreshold,
      'cacheTtl': ?cacheTtl,
      'chunk': ?chunk,
      'chunkOverlap': ?chunkOverlap,
      'chunkSize': ?chunkSize,
      'customMetadatas': ?pulumi.Input.mapOptionalInputValue<List<AiSearchInstanceCustomMetadata>, List<Map<String, dynamic>>>(customMetadatas, (value) => pulumi.Input.encodeList<AiSearchInstanceCustomMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'embeddingModel': ?embeddingModel,
      'fusionMethod': ?fusionMethod,
      'hybridSearchEnabled': ?hybridSearchEnabled,
      'indexMethod': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceIndexMethod, Map<String, dynamic>>(indexMethod, (value) => value.toMap()),
      'indexingOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceIndexingOptions, Map<String, dynamic>>(indexingOptions, (value) => value.toMap()),
      'maxNumResults': ?maxNumResults,
      'metadata': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'paused': ?paused,
      'publicEndpointParams': ?pulumi.Input.mapOptionalInputValue<AiSearchInstancePublicEndpointParams, Map<String, dynamic>>(publicEndpointParams, (value) => value.toMap()),
      'reranking': ?reranking,
      'rerankingModel': ?rerankingModel,
      'retrievalOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceRetrievalOptions, Map<String, dynamic>>(retrievalOptions, (value) => value.toMap()),
      'rewriteModel': ?rewriteModel,
      'rewriteQuery': ?rewriteQuery,
      'scoreThreshold': ?scoreThreshold,
      'source': ?source,
      'sourceParams': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParams, Map<String, dynamic>>(sourceParams, (value) => value.toMap()),
      'summarization': ?summarization,
      'summarizationModel': ?summarizationModel,
      'syncInterval': ?syncInterval,
      'systemPromptAisearch': ?systemPromptAisearch,
      'systemPromptIndexSummarization': ?systemPromptIndexSummarization,
      'systemPromptRewriteQuery': ?systemPromptRewriteQuery,
      'tokenId': ?tokenId,
      'type': ?type,
    };
  }

  factory AiSearchInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aiGatewayId: (() { final guardedValue = map['aiGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiSearchInstanceId: pulumi.Input.fromValue(map['aiSearchInstanceId'] as String),
      aisearchModel: (() { final guardedValue = map['aisearchModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheThreshold: (() { final guardedValue = map['cacheThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheTtl: (() { final guardedValue = map['cacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      chunk: (() { final guardedValue = map['chunk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      chunkOverlap: (() { final guardedValue = map['chunkOverlap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      chunkSize: (() { final guardedValue = map['chunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      customMetadatas: (() { final guardedValue = map['customMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSearchInstanceCustomMetadata>(guardedValue, (value) => AiSearchInstanceCustomMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      embeddingModel: (() { final guardedValue = map['embeddingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fusionMethod: (() { final guardedValue = map['fusionMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridSearchEnabled: (() { final guardedValue = map['hybridSearchEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      indexMethod: (() { final guardedValue = map['indexMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceIndexMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      indexingOptions: (() { final guardedValue = map['indexingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceIndexingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxNumResults: (() { final guardedValue = map['maxNumResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicEndpointParams: (() { final guardedValue = map['publicEndpointParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstancePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reranking: (() { final guardedValue = map['reranking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rerankingModel: (() { final guardedValue = map['rerankingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retrievalOptions: (() { final guardedValue = map['retrievalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceRetrievalOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rewriteModel: (() { final guardedValue = map['rewriteModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteQuery: (() { final guardedValue = map['rewriteQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scoreThreshold: (() { final guardedValue = map['scoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceParams: (() { final guardedValue = map['sourceParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      summarization: (() { final guardedValue = map['summarization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      summarizationModel: (() { final guardedValue = map['summarizationModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncInterval: (() { final guardedValue = map['syncInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      systemPromptAisearch: (() { final guardedValue = map['systemPromptAisearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemPromptIndexSummarization: (() { final guardedValue = map['systemPromptIndexSummarization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemPromptRewriteQuery: (() { final guardedValue = map['systemPromptRewriteQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenId: (() { final guardedValue = map['tokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
