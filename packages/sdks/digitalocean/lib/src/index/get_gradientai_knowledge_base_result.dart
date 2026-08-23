// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_last_indexing_job.dart';

/// Result data returned by getGradientaiKnowledgeBase.
class GetGradientaiKnowledgeBaseResult {
  final String? addedToAgentAt;
  final String createdAt;
  final String? databaseId;
  final String? embeddingModelUuid;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isPublic;
  final List<GetGradientaiKnowledgeBaseLastIndexingJob>? lastIndexingJobs;
  final String? name;
  final String? projectId;
  final String? region;
  final List<String>? tags;
  final String updatedAt;
  final String? userId;
  final String? uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseResult].
  /// [addedToAgentAt] Optional.
  /// [createdAt] Required.
  /// [databaseId] Optional.
  /// [embeddingModelUuid] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isPublic] Optional.
  /// [lastIndexingJobs] Optional.
  /// [name] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  /// [updatedAt] Required.
  /// [userId] Optional.
  /// [uuid] Optional.
  const GetGradientaiKnowledgeBaseResult({
    this.addedToAgentAt,
    required this.createdAt,
    this.databaseId,
    this.embeddingModelUuid,
    required this.id,
    this.isPublic,
    this.lastIndexingJobs,
    this.name,
    this.projectId,
    this.region,
    this.tags,
    required this.updatedAt,
    this.userId,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'createdAt': createdAt,
      'databaseId': ?databaseId,
      'embeddingModelUuid': ?embeddingModelUuid,
      'id': id,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?(() { final guardedValue = lastIndexingJobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'updatedAt': updatedAt,
      'userId': ?userId,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseResult(
      addedToAgentAt: (() { final guardedValue = map['addedToAgentAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: map['createdAt'] as String,
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      embeddingModelUuid: (() { final guardedValue = map['embeddingModelUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastIndexingJobs: (() { final guardedValue = map['lastIndexingJobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiKnowledgeBaseLastIndexingJob>(guardedValue, (value) => GetGradientaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: map['updatedAt'] as String,
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
