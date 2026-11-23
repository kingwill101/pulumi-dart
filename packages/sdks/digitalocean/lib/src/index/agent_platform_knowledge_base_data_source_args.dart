// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_knowledge_base_data_source_spaces_data_source.dart';
import 'agent_platform_knowledge_base_data_source_web_crawler_data_source.dart';

/// {@template pulumi_index_agent_platform_knowledge_base_data_source_agent_platform_knowledge_base_data_source_args_doc}
/// The set of arguments for AgentPlatformKnowledgeBaseDataSource.
/// {@endtemplate}
/// {@macro pulumi_index_agent_platform_knowledge_base_data_source_agent_platform_knowledge_base_data_source_args_doc}
class AgentPlatformKnowledgeBaseDataSourceArgs {
  /// UUID of the Knowledge Base
  final pulumi.Input<String> knowledgeBaseUuid;
  final pulumi.Input<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource?>? spacesDataSource;
  final pulumi.Input<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource?>? webCrawlerDataSource;

  /// Creates a new [AgentPlatformKnowledgeBaseDataSourceArgs].
  /// [knowledgeBaseUuid] UUID of the Knowledge Base
  /// [spacesDataSource] Optional.
  /// [webCrawlerDataSource] Optional.
  const AgentPlatformKnowledgeBaseDataSourceArgs({
    required this.knowledgeBaseUuid,
    this.spacesDataSource,
    this.webCrawlerDataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'spacesDataSource': ?pulumi.Input.mapOptionalInputValue<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource': ?pulumi.Input.mapOptionalInputValue<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory AgentPlatformKnowledgeBaseDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return AgentPlatformKnowledgeBaseDataSourceArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
      spacesDataSource: (() { final guardedValue = map['spacesDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPlatformKnowledgeBaseDataSourceSpacesDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webCrawlerDataSource: (() { final guardedValue = map['webCrawlerDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
