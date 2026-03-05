// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_genai_knowledge_base_data_sources_get_genai_knowledge_base_data_sources_args_doc}
/// Arguments for getGenaiKnowledgeBaseDataSources.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_knowledge_base_data_sources_get_genai_knowledge_base_data_sources_args_doc}
class GetGenaiKnowledgeBaseDataSourcesArgs {
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GetGenaiKnowledgeBaseDataSourcesArgs].
  /// [knowledgeBaseUuid] Required.
  GetGenaiKnowledgeBaseDataSourcesArgs({
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGenaiKnowledgeBaseDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseDataSourcesArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
    );
  }
}

