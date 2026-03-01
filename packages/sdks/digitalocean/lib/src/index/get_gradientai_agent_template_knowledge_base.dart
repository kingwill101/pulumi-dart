// ignore_for_file: unused_element, unnecessary_cast

import 'get_gradientai_agent_template_knowledge_base_last_indexing_job.dart';

class GetGradientaiAgentTemplateKnowledgeBase {
  /// Timestamp when the Knowledge Base was added to the Agent
  final String addedToAgentAt;
  /// Created At timestamp for the Knowledge Base
  final String createdAt;
  /// Database ID of the Knowledge Base
  final String? databaseId;
  /// Embedding model UUID for the Knowledge Base
  final String? embeddingModelUuid;
  /// Indicates if the Knowledge Base is public
  final bool? isPublic;
  /// Last indexing job for the Knowledge Base
  final GetGradientaiAgentTemplateKnowledgeBaseLastIndexingJob? lastIndexingJob;
  /// Name of the Knowledge Base
  final String? name;
  /// Project ID of the Knowledge Base
  final String? projectId;
  /// Region of the Knowledge Base
  final String? region;
  /// List of tags
  final List<String>? tags;
  /// Timestamp when the Knowledge Base was updated
  final String updatedAt;
  /// User ID of the Knowledge Base
  final String? userId;
  /// UUID of the Knowledge Base
  final String uuid;

  /// Creates a new [GetGradientaiAgentTemplateKnowledgeBase].
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
  GetGradientaiAgentTemplateKnowledgeBase({
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
      'lastIndexingJob': ?lastIndexingJob == null ? null : lastIndexingJob!.toMap(),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'updatedAt': updatedAt,
      'userId': ?userId,
      'uuid': uuid,
    };
  }

  factory GetGradientaiAgentTemplateKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentTemplateKnowledgeBase(
      addedToAgentAt: map['addedToAgentAt'] as String,
      createdAt: map['createdAt'] as String,
      databaseId: map['databaseId'] == null ? null : map['databaseId'] as String,
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : map['embeddingModelUuid'] as String,
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      lastIndexingJob: map['lastIndexingJob'] == null ? null : GetGradientaiAgentTemplateKnowledgeBaseLastIndexingJob.fromMap((map['lastIndexingJob'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

