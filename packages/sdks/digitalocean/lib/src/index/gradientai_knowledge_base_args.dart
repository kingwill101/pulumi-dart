// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source.dart';
import 'gradientai_knowledge_base_last_indexing_job.dart';

/// {@template pulumi_index_gradientai_knowledge_base_gradientai_knowledge_base_args_doc}
/// The set of arguments for GradientaiKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_knowledge_base_gradientai_knowledge_base_args_doc}
class GradientaiKnowledgeBaseArgs {
  /// The time when the knowledge base was added to the agent.
  final pulumi.Input<String>? addedToAgentAt;
  /// The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  final pulumi.Input<String>? databaseId;
  /// Data sources for the knowledge base
  final pulumi.Input<List<GradientaiKnowledgeBaseDataSource>> datasources;
  /// The unique identifier of the embedding model
  final pulumi.Input<String> embeddingModelUuid;
  /// Indicates whether the knowledge base is public or private.
  final pulumi.Input<bool>? isPublic;
  /// The last indexing job for the knowledge base.
  final pulumi.Input<List<GradientaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs;
  /// The name of the knowledge base.
  final pulumi.Input<String>? name;
  /// The unique identifier of the project to which the knowledge base belongs.
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> region;
  final pulumi.Input<List<String>>? tags;
  /// The unique identifier of the VPC to which the knowledge base belongs.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [GradientaiKnowledgeBaseArgs].
  /// [addedToAgentAt] The time when the knowledge base was added to the agent.
  /// [databaseId] The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  /// [datasources] Data sources for the knowledge base
  /// [embeddingModelUuid] The unique identifier of the embedding model
  /// [isPublic] Indicates whether the knowledge base is public or private.
  /// [lastIndexingJobs] The last indexing job for the knowledge base.
  /// [name] The name of the knowledge base.
  /// [projectId] The unique identifier of the project to which the knowledge base belongs.
  /// [region] Required.
  /// [tags] Optional.
  /// [vpcUuid] The unique identifier of the VPC to which the knowledge base belongs.
  GradientaiKnowledgeBaseArgs({
    pulumi.Output<String>? addedToAgentAt,
    pulumi.Output<String>? databaseId,
    required pulumi.Output<List<GradientaiKnowledgeBaseDataSource>> datasources,
    required pulumi.Output<String> embeddingModelUuid,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<List<GradientaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs,
    pulumi.Output<String>? name,
    required pulumi.Output<String> projectId,
    required pulumi.Output<String> region,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? vpcUuid,
  }) :
      addedToAgentAt = pulumi.Input.asOptionalInput<String>(addedToAgentAt),
      databaseId = pulumi.Input.asOptionalInput<String>(databaseId),
      datasources = pulumi.Input.asInput<List<GradientaiKnowledgeBaseDataSource>>(datasources),
      embeddingModelUuid = pulumi.Input.asInput<String>(embeddingModelUuid),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      lastIndexingJobs = pulumi.Input.asOptionalInput<List<GradientaiKnowledgeBaseLastIndexingJob>>(lastIndexingJobs),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asInput<String>(projectId),
      region = pulumi.Input.asInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      vpcUuid = pulumi.Input.asOptionalInput<String>(vpcUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'databaseId': ?databaseId,
      'datasources': pulumi.Input.mapInputValue<List<GradientaiKnowledgeBaseDataSource>, List<Map<String, dynamic>>>(datasources, (value) => pulumi.Input.encodeList<GradientaiKnowledgeBaseDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'embeddingModelUuid': embeddingModelUuid,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GradientaiKnowledgeBaseLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GradientaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'projectId': projectId,
      'region': region,
      'tags': ?tags,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory GradientaiKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseArgs(
      addedToAgentAt: map['addedToAgentAt'] == null ? null : pulumi.Output.create<String>(map['addedToAgentAt'] as String),
      databaseId: map['databaseId'] == null ? null : pulumi.Output.create<String>(map['databaseId'] as String),
      datasources: pulumi.Output.create<List<GradientaiKnowledgeBaseDataSource>>(pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSource>(map['datasources'], (value) => GradientaiKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>()))),
      embeddingModelUuid: pulumi.Output.create<String>(map['embeddingModelUuid'] as String),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Output.create<List<GradientaiKnowledgeBaseLastIndexingJob>>(pulumi.Input.decodeList<GradientaiKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs'], (value) => GradientaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      vpcUuid: map['vpcUuid'] == null ? null : pulumi.Output.create<String>(map['vpcUuid'] as String),
    );
  }
}

