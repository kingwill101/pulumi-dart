// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_knowledge_base_indexing_jobs_get_agent_platform_knowledge_base_indexing_jobs_args_doc}
/// Arguments for getAgentPlatformKnowledgeBaseIndexingJobs.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_knowledge_base_indexing_jobs_get_agent_platform_knowledge_base_indexing_jobs_args_doc}
class GetAgentPlatformKnowledgeBaseIndexingJobsArgs {
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GetAgentPlatformKnowledgeBaseIndexingJobsArgs].
  /// [knowledgeBaseUuid] Required.
  const GetAgentPlatformKnowledgeBaseIndexingJobsArgs({
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetAgentPlatformKnowledgeBaseIndexingJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBaseIndexingJobsArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
    );
  }
}
