// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_last_indexing_job.dart';

/// {@template pulumi_index_get_gradientai_knowledge_base_get_gradientai_knowledge_base_args_doc}
/// Arguments for getGradientaiKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_knowledge_base_get_gradientai_knowledge_base_args_doc}
class GetGradientaiKnowledgeBaseArgs {
  final pulumi.Input<String>? addedToAgentAt;
  final pulumi.Input<String>? databaseId;
  final pulumi.Input<String>? embeddingModelUuid;
  final pulumi.Input<bool>? isPublic;
  final pulumi.Input<List<GetGradientaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? region;
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<String>? userId;
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseArgs].
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
  GetGradientaiKnowledgeBaseArgs({
    pulumi.Output<String>? addedToAgentAt,
    pulumi.Output<String>? databaseId,
    pulumi.Output<String>? embeddingModelUuid,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<List<GetGradientaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? uuid,
  }) :
      addedToAgentAt = pulumi.Input.asOptionalInput<String>(addedToAgentAt),
      databaseId = pulumi.Input.asOptionalInput<String>(databaseId),
      embeddingModelUuid = pulumi.Input.asOptionalInput<String>(embeddingModelUuid),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      lastIndexingJobs = pulumi.Input.asOptionalInput<List<GetGradientaiKnowledgeBaseLastIndexingJob>>(lastIndexingJobs),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'databaseId': ?databaseId,
      'embeddingModelUuid': ?embeddingModelUuid,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBaseLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'userId': ?userId,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseArgs(
      addedToAgentAt: map['addedToAgentAt'] == null ? null : pulumi.Output.create<String>(map['addedToAgentAt'] as String),
      databaseId: map['databaseId'] == null ? null : pulumi.Output.create<String>(map['databaseId'] as String),
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : pulumi.Output.create<String>(map['embeddingModelUuid'] as String),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Output.create<List<GetGradientaiKnowledgeBaseLastIndexingJob>>(pulumi.Input.decodeList<GetGradientaiKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGradientaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

