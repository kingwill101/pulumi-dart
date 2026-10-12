// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_indexing_jobs_job.dart';
import 'get_gradientai_knowledge_base_indexing_jobs_meta.dart';

/// Result data returned by getGradientaiKnowledgeBaseIndexingJobs.
class GetGradientaiKnowledgeBaseIndexingJobsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGradientaiKnowledgeBaseIndexingJobsJob>? jobs;
  final String? knowledgeBaseUuid;
  final List<GetGradientaiKnowledgeBaseIndexingJobsMeta>? metas;

  /// Creates a new [GetGradientaiKnowledgeBaseIndexingJobsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobs] Optional.
  /// [knowledgeBaseUuid] Optional.
  /// [metas] Optional.
  const GetGradientaiKnowledgeBaseIndexingJobsResult({
    this.id,
    this.jobs,
    this.knowledgeBaseUuid,
    this.metas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'jobs': ?(() { final guardedValue = jobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiKnowledgeBaseIndexingJobsJob, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'metas': ?(() { final guardedValue = metas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiKnowledgeBaseIndexingJobsMeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGradientaiKnowledgeBaseIndexingJobsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseIndexingJobsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobs: (() { final guardedValue = map['jobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiKnowledgeBaseIndexingJobsJob>(guardedValue, (value) => GetGradientaiKnowledgeBaseIndexingJobsJob.fromMap((value as Map).cast<String, dynamic>())); })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metas: (() { final guardedValue = map['metas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiKnowledgeBaseIndexingJobsMeta>(guardedValue, (value) => GetGradientaiKnowledgeBaseIndexingJobsMeta.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
