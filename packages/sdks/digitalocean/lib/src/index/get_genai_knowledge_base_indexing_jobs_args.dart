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
  GetGenaiKnowledgeBaseIndexingJobsArgs({
    required pulumi.Output<String> knowledgeBaseUuid,
  }) :
      knowledgeBaseUuid = pulumi.Input.asInput<String>(knowledgeBaseUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGenaiKnowledgeBaseIndexingJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseIndexingJobsArgs(
      knowledgeBaseUuid: pulumi.Output.create<String>(map['knowledgeBaseUuid'] as String),
    );
  }
}

