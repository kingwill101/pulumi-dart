// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_genai_knowledge_base_indexing_jobs_get_genai_knowledge_base_indexing_jobs_args_doc}
/// Arguments for getGenaiKnowledgeBaseIndexingJobs.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_knowledge_base_indexing_jobs_get_genai_knowledge_base_indexing_jobs_args_doc}
class GetGenaiKnowledgeBaseIndexingJobsArgs {
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GetGenaiKnowledgeBaseIndexingJobsArgs].
  /// [knowledgeBaseUuid] Required.
  const GetGenaiKnowledgeBaseIndexingJobsArgs({
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGenaiKnowledgeBaseIndexingJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseIndexingJobsArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
    );
  }
}
