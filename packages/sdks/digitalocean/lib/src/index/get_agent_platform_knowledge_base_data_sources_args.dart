// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_knowledge_base_data_sources_get_agent_platform_knowledge_base_data_sources_args_doc}
/// Arguments for getAgentPlatformKnowledgeBaseDataSources.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_knowledge_base_data_sources_get_agent_platform_knowledge_base_data_sources_args_doc}
class GetAgentPlatformKnowledgeBaseDataSourcesArgs {
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GetAgentPlatformKnowledgeBaseDataSourcesArgs].
  /// [knowledgeBaseUuid] Required.
  const GetAgentPlatformKnowledgeBaseDataSourcesArgs({
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetAgentPlatformKnowledgeBaseDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBaseDataSourcesArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
    );
  }
}
