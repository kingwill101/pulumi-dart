// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_base_indexing_jobs_job.dart';
import 'get_genai_knowledge_base_indexing_jobs_meta.dart';

/// Result data returned by getGenaiKnowledgeBaseIndexingJobs.
class GetGenaiKnowledgeBaseIndexingJobsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiKnowledgeBaseIndexingJobsJob> jobs;
  final String knowledgeBaseUuid;
  final List<GetGenaiKnowledgeBaseIndexingJobsMeta> metas;

  /// Creates a new [GetGenaiKnowledgeBaseIndexingJobsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobs] Required.
  /// [knowledgeBaseUuid] Required.
  /// [metas] Required.
  const GetGenaiKnowledgeBaseIndexingJobsResult({
    required this.id,
    required this.jobs,
    required this.knowledgeBaseUuid,
    required this.metas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jobs': pulumi.Input.encodeList<GetGenaiKnowledgeBaseIndexingJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'metas': pulumi.Input.encodeList<GetGenaiKnowledgeBaseIndexingJobsMeta, Map<String, dynamic>>(metas, (value) => value.toMap()),
    };
  }

  factory GetGenaiKnowledgeBaseIndexingJobsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseIndexingJobsResult(
      id: map['id'] as String,
      jobs: pulumi.Input.decodeList<GetGenaiKnowledgeBaseIndexingJobsJob>(map['jobs']!, (value) => GetGenaiKnowledgeBaseIndexingJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
      metas: pulumi.Input.decodeList<GetGenaiKnowledgeBaseIndexingJobsMeta>(map['metas']!, (value) => GetGenaiKnowledgeBaseIndexingJobsMeta.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

