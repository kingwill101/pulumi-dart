// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_agent_template_knowledge_base_last_indexing_job.dart';

class GetGradientaiAgentsAgentTemplateKnowledgeBase {
  /// Timestamp when the Knowledge Base was added to the Agent
  final pulumi.Input<String> addedToAgentAt;
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;
  /// Database ID of the Knowledge Base
  final pulumi.Input<String>? databaseId;
  /// Embedding model UUID for the Knowledge Base
  final pulumi.Input<String>? embeddingModelUuid;
  /// Indicates if the Knowledge Base is public
  final pulumi.Input<bool>? isPublic;
  /// Last indexing job for the Knowledge Base
  final pulumi.Input<GetGradientaiAgentsAgentTemplateKnowledgeBaseLastIndexingJob>? lastIndexingJob;
  /// Name of the Knowledge Base
  final pulumi.Input<String>? name;
  /// Project ID of the Knowledge Base
  final pulumi.Input<String>? projectId;
  /// Region of the Knowledge Base
  final pulumi.Input<String>? region;
  /// List of tags
  final pulumi.Input<List<String>>? tags;
  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String> updatedAt;
  /// User ID of the Knowledge Base
  final pulumi.Input<String>? userId;
  /// UUID of the Knowledge Base
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiAgentsAgentTemplateKnowledgeBase].
  /// [addedToAgentAt] Timestamp when the Knowledge Base was added to the Agent
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [databaseId] Database ID of the Knowledge Base
  /// [embeddingModelUuid] Embedding model UUID for the Knowledge Base
  /// [isPublic] Indicates if the Knowledge Base is public
  /// [lastIndexingJob] Last indexing job for the Knowledge Base
  /// [name] Name of the Knowledge Base
  /// [projectId] Project ID of the Knowledge Base
  /// [region] Region of the Knowledge Base
  /// [tags] List of tags
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [userId] User ID of the Knowledge Base
  /// [uuid] UUID of the Knowledge Base
  GetGradientaiAgentsAgentTemplateKnowledgeBase({
    required this.addedToAgentAt,
    required this.createdAt,
    this.databaseId,
    this.embeddingModelUuid,
    this.isPublic,
    this.lastIndexingJob,
    this.name,
    this.projectId,
    this.region,
    this.tags,
    required this.updatedAt,
    this.userId,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': addedToAgentAt,
      'createdAt': createdAt,
      'databaseId': ?databaseId,
      'embeddingModelUuid': ?embeddingModelUuid,
      'isPublic': ?isPublic,
      'lastIndexingJob': ?pulumi.Input.mapOptionalInputValue<GetGradientaiAgentsAgentTemplateKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(lastIndexingJob, (value) => value.toMap()),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'updatedAt': updatedAt,
      'userId': ?userId,
      'uuid': uuid,
    };
  }

  factory GetGradientaiAgentsAgentTemplateKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentTemplateKnowledgeBase(
      addedToAgentAt: (map['addedToAgentAt'] as String).input(),
      createdAt: (map['createdAt'] as String).input(),
      databaseId: map['databaseId'] == null ? null : (map['databaseId']! as String).input(),
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : (map['embeddingModelUuid']! as String).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic']! as bool).input(),
      lastIndexingJob: map['lastIndexingJob'] == null ? null : (GetGradientaiAgentsAgentTemplateKnowledgeBaseLastIndexingJob.fromMap((map['lastIndexingJob']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
      uuid: (map['uuid'] as String).input(),
    );
  }
}

