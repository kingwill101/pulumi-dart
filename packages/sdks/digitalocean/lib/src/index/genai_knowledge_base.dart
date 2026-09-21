import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_knowledge_base_args.dart';
import 'genai_knowledge_base_last_indexing_job.dart';
import 'genai_knowledge_base_state.dart';
import 'gradientai_knowledge_base_data_source.dart';

class GenaiKnowledgeBase extends pulumi.CustomResource {
  /// The time when the knowledge base was added to the agent.
  late final pulumi.Output<String?> addedToAgentAt;
  /// The time when the knowledge base was created.
  late final pulumi.Output<String> createdAt;
  /// The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  late final pulumi.Output<String?> databaseId;
  /// Data sources for the knowledge base
  late final pulumi.Output<List<GradientaiKnowledgeBaseDataSource>> datasources;
  /// The unique identifier of the embedding model
  late final pulumi.Output<String> embeddingModelUuid;
  /// Indicates whether the knowledge base is public or private.
  late final pulumi.Output<bool?> isPublic;
  /// The last indexing job for the knowledge base.
  late final pulumi.Output<List<GenaiKnowledgeBaseLastIndexingJob>?> lastIndexingJobs;
  /// The name of the knowledge base.
  late final pulumi.Output<String> name;
  /// The unique identifier of the project to which the knowledge base belongs.
  late final pulumi.Output<String> projectId;
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<String>?> tags;
  /// The unique identifier of the VPC to which the knowledge base belongs.
  late final pulumi.Output<String?> vpcUuid;

  /// Creates a new [GenaiKnowledgeBase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiKnowledgeBase]. {@macro pulumi_index_genai_knowledge_base_genai_knowledge_base_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiKnowledgeBase(
    String name, {
    GenaiKnowledgeBaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiKnowledgeBase:GenaiKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.80.1').merge(options),
        ) {
    addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    createdAt = registerOutput<String>('createdAt');
    databaseId = registerOutput<String?>('databaseId');
    datasources = registerOutput<List<GradientaiKnowledgeBaseDataSource>>('datasources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSource>(guardedValue, (value) => GradientaiKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    isPublic = registerOutput<bool?>('isPublic');
    lastIndexingJobs = registerOutput<List<GenaiKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiKnowledgeBaseLastIndexingJob>(guardedValue, (value) => GenaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcUuid = registerOutput<String?>('vpcUuid');
  }

  /// Gets an existing [GenaiKnowledgeBase] resource's state with the given [name] and [id].
  static GenaiKnowledgeBase get(
    String name,
    pulumi.Input<String> id, {
    GenaiKnowledgeBaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GenaiKnowledgeBase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GenaiKnowledgeBase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiKnowledgeBase:GenaiKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    createdAt = registerOutput<String>('createdAt');
    databaseId = registerOutput<String?>('databaseId');
    datasources = registerOutput<List<GradientaiKnowledgeBaseDataSource>>('datasources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSource>(guardedValue, (value) => GradientaiKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    isPublic = registerOutput<bool?>('isPublic');
    lastIndexingJobs = registerOutput<List<GenaiKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiKnowledgeBaseLastIndexingJob>(guardedValue, (value) => GenaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcUuid = registerOutput<String?>('vpcUuid');
  }

  /// Creates a typed reference to an existing [GenaiKnowledgeBase] resource.
  GenaiKnowledgeBase.reference(String urn)
    : super(
        'digitalocean:index/genaiKnowledgeBase:GenaiKnowledgeBase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    createdAt = registerOutput<String>('createdAt');
    databaseId = registerOutput<String?>('databaseId');
    datasources = registerOutput<List<GradientaiKnowledgeBaseDataSource>>('datasources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSource>(guardedValue, (value) => GradientaiKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>())); });
    embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    isPublic = registerOutput<bool?>('isPublic');
    lastIndexingJobs = registerOutput<List<GenaiKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiKnowledgeBaseLastIndexingJob>(guardedValue, (value) => GenaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcUuid = registerOutput<String?>('vpcUuid');
  }
}
