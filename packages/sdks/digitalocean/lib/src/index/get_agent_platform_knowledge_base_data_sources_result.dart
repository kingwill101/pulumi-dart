// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_knowledge_base_data_sources_datasource.dart';

/// Result data returned by getAgentPlatformKnowledgeBaseDataSources.
class GetAgentPlatformKnowledgeBaseDataSourcesResult {
  final List<GetAgentPlatformKnowledgeBaseDataSourcesDatasource>? datasources;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? knowledgeBaseUuid;

  /// Creates a new [GetAgentPlatformKnowledgeBaseDataSourcesResult].
  /// [datasources] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBaseUuid] Optional.
  const GetAgentPlatformKnowledgeBaseDataSourcesResult({
    this.datasources,
    this.id,
    this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasources': ?(() { final guardedValue = datasources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformKnowledgeBaseDataSourcesDatasource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
    };
  }

  factory GetAgentPlatformKnowledgeBaseDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBaseDataSourcesResult(
      datasources: (() { final guardedValue = map['datasources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformKnowledgeBaseDataSourcesDatasource>(guardedValue, (value) => GetAgentPlatformKnowledgeBaseDataSourcesDatasource.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
