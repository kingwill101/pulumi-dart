// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_knowledge_base_indexing_jobs_get_gradientai_knowledge_base_indexing_jobs_args_doc}
/// Arguments for getGradientaiKnowledgeBaseIndexingJobs.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_knowledge_base_indexing_jobs_get_gradientai_knowledge_base_indexing_jobs_args_doc}
class GetGradientaiKnowledgeBaseIndexingJobsArgs {
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GetGradientaiKnowledgeBaseIndexingJobsArgs].
  /// [knowledgeBaseUuid] Required.
  const GetGradientaiKnowledgeBaseIndexingJobsArgs({
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGradientaiKnowledgeBaseIndexingJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseIndexingJobsArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
    );
  }
}

