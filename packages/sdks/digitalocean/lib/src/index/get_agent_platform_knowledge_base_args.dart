// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_knowledge_base_last_indexing_job.dart';

/// {@template pulumi_index_get_agent_platform_knowledge_base_get_agent_platform_knowledge_base_args_doc}
/// Arguments for getAgentPlatformKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_knowledge_base_get_agent_platform_knowledge_base_args_doc}
class GetAgentPlatformKnowledgeBaseArgs {
  final pulumi.Input<String?>? addedToAgentAt;
  final pulumi.Input<String?>? databaseId;
  final pulumi.Input<String?>? embeddingModelUuid;
  final pulumi.Input<bool?>? isPublic;
  final pulumi.Input<List<GetAgentPlatformKnowledgeBaseLastIndexingJob>?>? lastIndexingJobs;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? projectId;
  final pulumi.Input<String?>? region;
  final pulumi.Input<List<String>?>? tags;
  final pulumi.Input<String?>? userId;
  final pulumi.Input<String?>? uuid;

  /// Creates a new [GetAgentPlatformKnowledgeBaseArgs].
  /// [addedToAgentAt] Optional.
  /// [databaseId] Optional.
  /// [embeddingModelUuid] Optional.
  /// [isPublic] Optional.
  /// [lastIndexingJobs] Optional.
  /// [name] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  /// [userId] Optional.
  /// [uuid] Optional.
  const GetAgentPlatformKnowledgeBaseArgs({
    this.addedToAgentAt,
    this.databaseId,
    this.embeddingModelUuid,
    this.isPublic,
    this.lastIndexingJobs,
    this.name,
    this.projectId,
    this.region,
    this.tags,
    this.userId,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'databaseId': ?databaseId,
      'embeddingModelUuid': ?embeddingModelUuid,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformKnowledgeBaseLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GetAgentPlatformKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'userId': ?userId,
      'uuid': ?uuid,
    };
  }

  factory GetAgentPlatformKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBaseArgs(
      addedToAgentAt: (() { final guardedValue = map['addedToAgentAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddingModelUuid: (() { final guardedValue = map['embeddingModelUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastIndexingJobs: (() { final guardedValue = map['lastIndexingJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformKnowledgeBaseLastIndexingJob>(guardedValue, (value) => GetAgentPlatformKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
