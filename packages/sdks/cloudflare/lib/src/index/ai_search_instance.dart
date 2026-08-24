import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_args.dart';
import 'ai_search_instance_custom_metadata.dart';
import 'ai_search_instance_index_method.dart';
import 'ai_search_instance_indexing_options.dart';
import 'ai_search_instance_metadata.dart';
import 'ai_search_instance_public_endpoint_params.dart';
import 'ai_search_instance_retrieval_options.dart';
import 'ai_search_instance_source_params.dart';
import 'ai_search_instance_state.dart';

/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class AiSearchInstance extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> aiGatewayId;
  /// AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
  late final pulumi.Output<String> aiSearchInstanceId;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  late final pulumi.Output<String> aisearchModel;
  late final pulumi.Output<bool> cache;
  /// Available values: "super*strict*match", "close*enough", "flexible*friend", "anythingGoes".
  late final pulumi.Output<String> cacheThreshold;
  /// Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600 (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200 (72h), 518400 (6d).
  /// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
  late final pulumi.Output<double> cacheTtl;
  late final pulumi.Output<bool> chunk;
  late final pulumi.Output<int> chunkOverlap;
  late final pulumi.Output<int> chunkSize;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> createdBy;
  late final pulumi.Output<List<AiSearchInstanceCustomMetadata>?> customMetadatas;
  /// Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m", "google-ai-studio/gemini-embedding-001", "google-ai-studio/gemini-embedding-2-preview", "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small", "openai/text-embedding-3-large", "".
  late final pulumi.Output<String> embeddingModel;
  late final pulumi.Output<bool> enable;
  late final pulumi.Output<double> engineVersion;
  /// Available values: "max", "rrf".
  late final pulumi.Output<String> fusionMethod;
  /// Deprecated — use indexMethod instead.
  late final pulumi.Output<bool> hybridSearchEnabled;
  /// Controls which storage backends are used during indexing. Defaults to vector-only.
  late final pulumi.Output<AiSearchInstanceIndexMethod> indexMethod;
  late final pulumi.Output<AiSearchInstanceIndexingOptions> indexingOptions;
  late final pulumi.Output<String> lastActivity;
  late final pulumi.Output<int> maxNumResults;
  late final pulumi.Output<AiSearchInstanceMetadata?> metadata;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> modifiedBy;
  late final pulumi.Output<String> namespace;
  late final pulumi.Output<bool> paused;
  late final pulumi.Output<String> publicEndpointId;
  late final pulumi.Output<AiSearchInstancePublicEndpointParams> publicEndpointParams;
  late final pulumi.Output<bool> reranking;
  /// Available values: "@cf/baai/bge-reranker-base", "".
  late final pulumi.Output<String> rerankingModel;
  late final pulumi.Output<AiSearchInstanceRetrievalOptions?> retrievalOptions;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  late final pulumi.Output<String> rewriteModel;
  late final pulumi.Output<bool> rewriteQuery;
  late final pulumi.Output<double> scoreThreshold;
  late final pulumi.Output<String?> source;
  late final pulumi.Output<AiSearchInstanceSourceParams> sourceParams;
  late final pulumi.Output<String> status;
  late final pulumi.Output<bool> summarization;
  /// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast", "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast", "@cf/meta/llama-3.1-8b-instruct-fp8", "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8", "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b", "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4", "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku", "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking", "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct", "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro", "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant", "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
  late final pulumi.Output<String?> summarizationModel;
  /// Interval between automatic syncs, in seconds. Allowed values: 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h), 86400 (24h).
  /// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
  late final pulumi.Output<double> syncInterval;
  late final pulumi.Output<String?> systemPromptAisearch;
  late final pulumi.Output<String?> systemPromptIndexSummarization;
  late final pulumi.Output<String?> systemPromptRewriteQuery;
  late final pulumi.Output<String?> tokenId;
  /// Available values: "r2", "web-crawler".
  late final pulumi.Output<String?> type;
  late final pulumi.Output<String> vectorizeName;

  /// Creates a new [AiSearchInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSearchInstance]. {@macro pulumi_index_ai_search_instance_ai_search_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSearchInstance(
    String name, {
    AiSearchInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSearchInstance:AiSearchInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    aiSearchInstanceId = registerOutput<String>('aiSearchInstanceId');
    aisearchModel = registerOutput<String>('aisearchModel');
    cache = registerOutput<bool>('cache');
    cacheThreshold = registerOutput<String>('cacheThreshold');
    cacheTtl = registerOutput<double>('cacheTtl');
    chunk = registerOutput<bool>('chunk');
    chunkOverlap = registerOutput<int>('chunkOverlap');
    chunkSize = registerOutput<int>('chunkSize');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    customMetadatas = registerOutput<List<AiSearchInstanceCustomMetadata>?>('customMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiSearchInstanceCustomMetadata>(guardedValue, (value) => AiSearchInstanceCustomMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModel = registerOutput<String>('embeddingModel');
    enable = registerOutput<bool>('enable');
    engineVersion = registerOutput<double>('engineVersion');
    fusionMethod = registerOutput<String>('fusionMethod');
    hybridSearchEnabled = registerOutput<bool>('hybridSearchEnabled');
    indexMethod = registerOutput<AiSearchInstanceIndexMethod>('indexMethod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceIndexMethod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    indexingOptions = registerOutput<AiSearchInstanceIndexingOptions>('indexingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceIndexingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastActivity = registerOutput<String>('lastActivity');
    maxNumResults = registerOutput<int>('maxNumResults');
    metadata = registerOutput<AiSearchInstanceMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    namespace = registerOutput<String>('namespace');
    paused = registerOutput<bool>('paused');
    publicEndpointId = registerOutput<String>('publicEndpointId');
    publicEndpointParams = registerOutput<AiSearchInstancePublicEndpointParams>('publicEndpointParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstancePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reranking = registerOutput<bool>('reranking');
    rerankingModel = registerOutput<String>('rerankingModel');
    retrievalOptions = registerOutput<AiSearchInstanceRetrievalOptions?>('retrievalOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceRetrievalOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rewriteModel = registerOutput<String>('rewriteModel');
    rewriteQuery = registerOutput<bool>('rewriteQuery');
    scoreThreshold = registerOutput<double>('scoreThreshold');
    source = registerOutput<String?>('source');
    sourceParams = registerOutput<AiSearchInstanceSourceParams>('sourceParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceSourceParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    summarization = registerOutput<bool>('summarization');
    summarizationModel = registerOutput<String?>('summarizationModel');
    syncInterval = registerOutput<double>('syncInterval');
    systemPromptAisearch = registerOutput<String?>('systemPromptAisearch');
    systemPromptIndexSummarization = registerOutput<String?>('systemPromptIndexSummarization');
    systemPromptRewriteQuery = registerOutput<String?>('systemPromptRewriteQuery');
    tokenId = registerOutput<String?>('tokenId');
    type = registerOutput<String?>('type');
    vectorizeName = registerOutput<String>('vectorizeName');
  }

  /// Gets an existing [AiSearchInstance] resource's state with the given [name] and [id].
  static AiSearchInstance get(
    String name,
    pulumi.Input<String> id, {
    AiSearchInstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSearchInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSearchInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSearchInstance:AiSearchInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    aiSearchInstanceId = registerOutput<String>('aiSearchInstanceId');
    aisearchModel = registerOutput<String>('aisearchModel');
    cache = registerOutput<bool>('cache');
    cacheThreshold = registerOutput<String>('cacheThreshold');
    cacheTtl = registerOutput<double>('cacheTtl');
    chunk = registerOutput<bool>('chunk');
    chunkOverlap = registerOutput<int>('chunkOverlap');
    chunkSize = registerOutput<int>('chunkSize');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    customMetadatas = registerOutput<List<AiSearchInstanceCustomMetadata>?>('customMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiSearchInstanceCustomMetadata>(guardedValue, (value) => AiSearchInstanceCustomMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModel = registerOutput<String>('embeddingModel');
    enable = registerOutput<bool>('enable');
    engineVersion = registerOutput<double>('engineVersion');
    fusionMethod = registerOutput<String>('fusionMethod');
    hybridSearchEnabled = registerOutput<bool>('hybridSearchEnabled');
    indexMethod = registerOutput<AiSearchInstanceIndexMethod>('indexMethod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceIndexMethod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    indexingOptions = registerOutput<AiSearchInstanceIndexingOptions>('indexingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceIndexingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastActivity = registerOutput<String>('lastActivity');
    maxNumResults = registerOutput<int>('maxNumResults');
    metadata = registerOutput<AiSearchInstanceMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    namespace = registerOutput<String>('namespace');
    paused = registerOutput<bool>('paused');
    publicEndpointId = registerOutput<String>('publicEndpointId');
    publicEndpointParams = registerOutput<AiSearchInstancePublicEndpointParams>('publicEndpointParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstancePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reranking = registerOutput<bool>('reranking');
    rerankingModel = registerOutput<String>('rerankingModel');
    retrievalOptions = registerOutput<AiSearchInstanceRetrievalOptions?>('retrievalOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceRetrievalOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rewriteModel = registerOutput<String>('rewriteModel');
    rewriteQuery = registerOutput<bool>('rewriteQuery');
    scoreThreshold = registerOutput<double>('scoreThreshold');
    source = registerOutput<String?>('source');
    sourceParams = registerOutput<AiSearchInstanceSourceParams>('sourceParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceSourceParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    summarization = registerOutput<bool>('summarization');
    summarizationModel = registerOutput<String?>('summarizationModel');
    syncInterval = registerOutput<double>('syncInterval');
    systemPromptAisearch = registerOutput<String?>('systemPromptAisearch');
    systemPromptIndexSummarization = registerOutput<String?>('systemPromptIndexSummarization');
    systemPromptRewriteQuery = registerOutput<String?>('systemPromptRewriteQuery');
    tokenId = registerOutput<String?>('tokenId');
    type = registerOutput<String?>('type');
    vectorizeName = registerOutput<String>('vectorizeName');
  }

  /// Creates a typed reference to an existing [AiSearchInstance] resource.
  AiSearchInstance.reference(String urn)
    : super(
        'cloudflare:index/aiSearchInstance:AiSearchInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    aiGatewayId = registerOutput<String>('aiGatewayId');
    aiSearchInstanceId = registerOutput<String>('aiSearchInstanceId');
    aisearchModel = registerOutput<String>('aisearchModel');
    cache = registerOutput<bool>('cache');
    cacheThreshold = registerOutput<String>('cacheThreshold');
    cacheTtl = registerOutput<double>('cacheTtl');
    chunk = registerOutput<bool>('chunk');
    chunkOverlap = registerOutput<int>('chunkOverlap');
    chunkSize = registerOutput<int>('chunkSize');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    customMetadatas = registerOutput<List<AiSearchInstanceCustomMetadata>?>('customMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiSearchInstanceCustomMetadata>(guardedValue, (value) => AiSearchInstanceCustomMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModel = registerOutput<String>('embeddingModel');
    enable = registerOutput<bool>('enable');
    engineVersion = registerOutput<double>('engineVersion');
    fusionMethod = registerOutput<String>('fusionMethod');
    hybridSearchEnabled = registerOutput<bool>('hybridSearchEnabled');
    indexMethod = registerOutput<AiSearchInstanceIndexMethod>('indexMethod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceIndexMethod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    indexingOptions = registerOutput<AiSearchInstanceIndexingOptions>('indexingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceIndexingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastActivity = registerOutput<String>('lastActivity');
    maxNumResults = registerOutput<int>('maxNumResults');
    metadata = registerOutput<AiSearchInstanceMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    namespace = registerOutput<String>('namespace');
    paused = registerOutput<bool>('paused');
    publicEndpointId = registerOutput<String>('publicEndpointId');
    publicEndpointParams = registerOutput<AiSearchInstancePublicEndpointParams>('publicEndpointParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstancePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reranking = registerOutput<bool>('reranking');
    rerankingModel = registerOutput<String>('rerankingModel');
    retrievalOptions = registerOutput<AiSearchInstanceRetrievalOptions?>('retrievalOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceRetrievalOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rewriteModel = registerOutput<String>('rewriteModel');
    rewriteQuery = registerOutput<bool>('rewriteQuery');
    scoreThreshold = registerOutput<double>('scoreThreshold');
    source = registerOutput<String?>('source');
    sourceParams = registerOutput<AiSearchInstanceSourceParams>('sourceParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchInstanceSourceParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    summarization = registerOutput<bool>('summarization');
    summarizationModel = registerOutput<String?>('summarizationModel');
    syncInterval = registerOutput<double>('syncInterval');
    systemPromptAisearch = registerOutput<String?>('systemPromptAisearch');
    systemPromptIndexSummarization = registerOutput<String?>('systemPromptIndexSummarization');
    systemPromptRewriteQuery = registerOutput<String?>('systemPromptRewriteQuery');
    tokenId = registerOutput<String?>('tokenId');
    type = registerOutput<String?>('type');
    vectorizeName = registerOutput<String>('vectorizeName');
  }
}
