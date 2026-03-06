// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_knowledge_base_last_indexing_job.dart';

class GetGenaiAgentKnowledgeBase {
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
  final pulumi.Input<GetGenaiAgentKnowledgeBaseLastIndexingJob>? lastIndexingJob;
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

  /// Creates a new [GetGenaiAgentKnowledgeBase].
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
  const GetGenaiAgentKnowledgeBase({
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
      'lastIndexingJob': ?pulumi.Input.mapOptionalInputValue<GetGenaiAgentKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(lastIndexingJob, (value) => value.toMap()),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'updatedAt': updatedAt,
      'userId': ?userId,
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentKnowledgeBase(
      addedToAgentAt: pulumi.Input.fromValue(map['addedToAgentAt'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddingModelUuid: (() { final guardedValue = map['embeddingModelUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastIndexingJob: (() { final guardedValue = map['lastIndexingJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetGenaiAgentKnowledgeBaseLastIndexingJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

