// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_base_last_indexing_job.dart';

/// {@template pulumi_index_get_genai_knowledge_base_get_genai_knowledge_base_args_doc}
/// Arguments for getGenaiKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_knowledge_base_get_genai_knowledge_base_args_doc}
class GetGenaiKnowledgeBaseArgs {
  final pulumi.Input<String>? addedToAgentAt;
  final pulumi.Input<String>? databaseId;
  final pulumi.Input<String>? embeddingModelUuid;
  final pulumi.Input<bool>? isPublic;
  final pulumi.Input<List<GetGenaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? region;
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<String>? userId;
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGenaiKnowledgeBaseArgs].
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
  GetGenaiKnowledgeBaseArgs({
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
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBaseLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'userId': ?userId,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseArgs(
      addedToAgentAt: map['addedToAgentAt'] == null ? null : (map['addedToAgentAt'] as String).input(),
      databaseId: map['databaseId'] == null ? null : (map['databaseId'] as String).input(),
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : (map['embeddingModelUuid'] as String).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic'] as bool).input(),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : (pulumi.Input.decodeList<GetGenaiKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGenaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

