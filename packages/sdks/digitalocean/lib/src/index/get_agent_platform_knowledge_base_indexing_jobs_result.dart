// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_knowledge_base_indexing_jobs_job.dart';
import 'get_agent_platform_knowledge_base_indexing_jobs_meta.dart';

/// Result data returned by getAgentPlatformKnowledgeBaseIndexingJobs.
class GetAgentPlatformKnowledgeBaseIndexingJobsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformKnowledgeBaseIndexingJobsJob>? jobs;
  final String? knowledgeBaseUuid;
  final List<GetAgentPlatformKnowledgeBaseIndexingJobsMeta>? metas;

  /// Creates a new [GetAgentPlatformKnowledgeBaseIndexingJobsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobs] Optional.
  /// [knowledgeBaseUuid] Optional.
  /// [metas] Optional.
  const GetAgentPlatformKnowledgeBaseIndexingJobsResult({
    this.id,
    this.jobs,
    this.knowledgeBaseUuid,
    this.metas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'jobs': ?(() { final guardedValue = jobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformKnowledgeBaseIndexingJobsJob, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'metas': ?(() { final guardedValue = metas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformKnowledgeBaseIndexingJobsMeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformKnowledgeBaseIndexingJobsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBaseIndexingJobsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobs: (() { final guardedValue = map['jobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformKnowledgeBaseIndexingJobsJob>(guardedValue, (value) => GetAgentPlatformKnowledgeBaseIndexingJobsJob.fromMap((value as Map).cast<String, dynamic>())); })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metas: (() { final guardedValue = map['metas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformKnowledgeBaseIndexingJobsMeta>(guardedValue, (value) => GetAgentPlatformKnowledgeBaseIndexingJobsMeta.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
