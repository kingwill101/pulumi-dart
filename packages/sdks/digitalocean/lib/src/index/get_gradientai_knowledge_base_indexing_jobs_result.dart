// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_indexing_jobs_job.dart';
import 'get_gradientai_knowledge_base_indexing_jobs_meta.dart';

/// Result data returned by getGradientaiKnowledgeBaseIndexingJobs.
class GetGradientaiKnowledgeBaseIndexingJobsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiKnowledgeBaseIndexingJobsJob> jobs;
  final String knowledgeBaseUuid;
  final List<GetGradientaiKnowledgeBaseIndexingJobsMeta> metas;

  /// Creates a new [GetGradientaiKnowledgeBaseIndexingJobsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobs] Required.
  /// [knowledgeBaseUuid] Required.
  /// [metas] Required.
  GetGradientaiKnowledgeBaseIndexingJobsResult({
    required this.id,
    required this.jobs,
    required this.knowledgeBaseUuid,
    required this.metas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jobs': pulumi.Input.encodeList<GetGradientaiKnowledgeBaseIndexingJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'metas': pulumi.Input.encodeList<GetGradientaiKnowledgeBaseIndexingJobsMeta, Map<String, dynamic>>(metas, (value) => value.toMap()),
    };
  }

  factory GetGradientaiKnowledgeBaseIndexingJobsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseIndexingJobsResult(
      id: map['id'] as String,
      jobs: pulumi.Input.decodeList<GetGradientaiKnowledgeBaseIndexingJobsJob>(map['jobs'], (value) => GetGradientaiKnowledgeBaseIndexingJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
      metas: pulumi.Input.decodeList<GetGradientaiKnowledgeBaseIndexingJobsMeta>(map['metas'], (value) => GetGradientaiKnowledgeBaseIndexingJobsMeta.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

