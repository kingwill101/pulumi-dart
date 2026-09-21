// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_base_indexing_jobs_job.dart';
import 'get_genai_knowledge_base_indexing_jobs_meta.dart';

/// Result data returned by getGenaiKnowledgeBaseIndexingJobs.
class GetGenaiKnowledgeBaseIndexingJobsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGenaiKnowledgeBaseIndexingJobsJob>? jobs;
  final String? knowledgeBaseUuid;
  final List<GetGenaiKnowledgeBaseIndexingJobsMeta>? metas;

  /// Creates a new [GetGenaiKnowledgeBaseIndexingJobsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobs] Optional.
  /// [knowledgeBaseUuid] Optional.
  /// [metas] Optional.
  const GetGenaiKnowledgeBaseIndexingJobsResult({
    this.id,
    this.jobs,
    this.knowledgeBaseUuid,
    this.metas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'jobs': ?(() { final guardedValue = jobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiKnowledgeBaseIndexingJobsJob, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'metas': ?(() { final guardedValue = metas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiKnowledgeBaseIndexingJobsMeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiKnowledgeBaseIndexingJobsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseIndexingJobsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobs: (() { final guardedValue = map['jobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiKnowledgeBaseIndexingJobsJob>(guardedValue, (value) => GetGenaiKnowledgeBaseIndexingJobsJob.fromMap((value as Map).cast<String, dynamic>())); })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metas: (() { final guardedValue = map['metas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiKnowledgeBaseIndexingJobsMeta>(guardedValue, (value) => GetGenaiKnowledgeBaseIndexingJobsMeta.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
