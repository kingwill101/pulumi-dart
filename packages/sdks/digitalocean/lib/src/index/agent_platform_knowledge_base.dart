import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_knowledge_base_args.dart';
import 'agent_platform_knowledge_base_data_source.dart';
import 'agent_platform_knowledge_base_last_indexing_job.dart';
import 'agent_platform_knowledge_base_state.dart';

class AgentPlatformKnowledgeBase extends pulumi.CustomResource {
  /// The time when the knowledge base was added to the agent.
  late final pulumi.Output<String?> addedToAgentAt;
  /// The time when the knowledge base was created.
  late final pulumi.Output<String> createdAt;
  /// The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  late final pulumi.Output<String?> databaseId;
  /// Data sources for the knowledge base
  late final pulumi.Output<List<AgentPlatformKnowledgeBaseDataSource>> datasources;
  /// The unique identifier of the embedding model
  late final pulumi.Output<String> embeddingModelUuid;
  /// Indicates whether the knowledge base is public or private.
  late final pulumi.Output<bool?> isPublic;
  /// The last indexing job for the knowledge base.
  late final pulumi.Output<List<AgentPlatformKnowledgeBaseLastIndexingJob>?> lastIndexingJobs;
  /// The name of the knowledge base.
  late final pulumi.Output<String> name;
  /// The unique identifier of the project to which the knowledge base belongs.
  late final pulumi.Output<String> projectId;
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<String>?> tags;
  /// The unique identifier of the VPC to which the knowledge base belongs.
  late final pulumi.Output<String?> vpcUuid;

  /// Creates a new [AgentPlatformKnowledgeBase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformKnowledgeBase]. {@macro pulumi_index_agent_platform_knowledge_base_agent_platform_knowledge_base_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformKnowledgeBase(
    String name, {
    AgentPlatformKnowledgeBaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformKnowledgeBase:AgentPlatformKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    createdAt = registerOutput<String>('createdAt');
    databaseId = registerOutput<String?>('databaseId');
    datasources = registerOutput<List<AgentPlatformKnowledgeBaseDataSource>>('datasources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSource>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    isPublic = registerOutput<bool?>('isPublic');
    lastIndexingJobs = registerOutput<List<AgentPlatformKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformKnowledgeBaseLastIndexingJob>(guardedValue, (value) => AgentPlatformKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcUuid = registerOutput<String?>('vpcUuid');
  }

  /// Gets an existing [AgentPlatformKnowledgeBase] resource's state with the given [name] and [id].
  static AgentPlatformKnowledgeBase get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformKnowledgeBaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformKnowledgeBase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformKnowledgeBase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformKnowledgeBase:AgentPlatformKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    createdAt = registerOutput<String>('createdAt');
    databaseId = registerOutput<String?>('databaseId');
    datasources = registerOutput<List<AgentPlatformKnowledgeBaseDataSource>>('datasources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSource>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    isPublic = registerOutput<bool?>('isPublic');
    lastIndexingJobs = registerOutput<List<AgentPlatformKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformKnowledgeBaseLastIndexingJob>(guardedValue, (value) => AgentPlatformKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcUuid = registerOutput<String?>('vpcUuid');
  }

  /// Creates a typed reference to an existing [AgentPlatformKnowledgeBase] resource.
  AgentPlatformKnowledgeBase.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformKnowledgeBase:AgentPlatformKnowledgeBase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    createdAt = registerOutput<String>('createdAt');
    databaseId = registerOutput<String?>('databaseId');
    datasources = registerOutput<List<AgentPlatformKnowledgeBaseDataSource>>('datasources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSource>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    isPublic = registerOutput<bool?>('isPublic');
    lastIndexingJobs = registerOutput<List<AgentPlatformKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformKnowledgeBaseLastIndexingJob>(guardedValue, (value) => AgentPlatformKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcUuid = registerOutput<String?>('vpcUuid');
  }
}
