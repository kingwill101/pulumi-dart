// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_knowledge_base_last_indexing_job.dart';
import 'gradientai_knowledge_base_data_source.dart';

/// Input properties used for looking up and filtering GenaiKnowledgeBase resources.
class GenaiKnowledgeBaseState {
  /// The time when the knowledge base was added to the agent.
  final pulumi.Input<String>? addedToAgentAt;
  /// The time when the knowledge base was created.
  final pulumi.Input<String>? createdAt;
  /// The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  final pulumi.Input<String>? databaseId;
  /// Data sources for the knowledge base
  final pulumi.Input<List<GradientaiKnowledgeBaseDataSource>>? datasources;
  /// The unique identifier of the embedding model
  final pulumi.Input<String>? embeddingModelUuid;
  /// Indicates whether the knowledge base is public or private.
  final pulumi.Input<bool>? isPublic;
  /// The last indexing job for the knowledge base.
  final pulumi.Input<List<GenaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs;
  /// The name of the knowledge base.
  final pulumi.Input<String>? name;
  /// The unique identifier of the project to which the knowledge base belongs.
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? region;
  final pulumi.Input<List<String>>? tags;
  /// The unique identifier of the VPC to which the knowledge base belongs.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [GenaiKnowledgeBaseState].
  /// [addedToAgentAt] The time when the knowledge base was added to the agent.
  /// [createdAt] The time when the knowledge base was created.
  /// [databaseId] The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  /// [datasources] Data sources for the knowledge base
  /// [embeddingModelUuid] The unique identifier of the embedding model
  /// [isPublic] Indicates whether the knowledge base is public or private.
  /// [lastIndexingJobs] The last indexing job for the knowledge base.
  /// [name] The name of the knowledge base.
  /// [projectId] The unique identifier of the project to which the knowledge base belongs.
  /// [region] Optional.
  /// [tags] Optional.
  /// [vpcUuid] The unique identifier of the VPC to which the knowledge base belongs.
  GenaiKnowledgeBaseState({
    this.addedToAgentAt,
    this.createdAt,
    this.databaseId,
    this.datasources,
    this.embeddingModelUuid,
    this.isPublic,
    this.lastIndexingJobs,
    this.name,
    this.projectId,
    this.region,
    this.tags,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'createdAt': ?createdAt,
      'databaseId': ?databaseId,
      'datasources': ?pulumi.Input.mapOptionalInputValue<List<GradientaiKnowledgeBaseDataSource>, List<Map<String, dynamic>>>(datasources, (value) => pulumi.Input.encodeList<GradientaiKnowledgeBaseDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'embeddingModelUuid': ?embeddingModelUuid,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GenaiKnowledgeBaseLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GenaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory GenaiKnowledgeBaseState.fromMap(Map<String, dynamic> map) {
    return GenaiKnowledgeBaseState(
      addedToAgentAt: map['addedToAgentAt'] == null ? null : (map['addedToAgentAt']! as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      databaseId: map['databaseId'] == null ? null : (map['databaseId']! as String).input(),
      datasources: map['datasources'] == null ? null : (pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSource>(map['datasources']!, (value) => GradientaiKnowledgeBaseDataSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : (map['embeddingModelUuid']! as String).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic']! as bool).input(),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : (pulumi.Input.decodeList<GenaiKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs']!, (value) => GenaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      vpcUuid: map['vpcUuid'] == null ? null : (map['vpcUuid']! as String).input(),
    );
  }
}

