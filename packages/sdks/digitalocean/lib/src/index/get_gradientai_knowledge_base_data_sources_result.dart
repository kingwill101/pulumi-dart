// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_data_sources_datasource.dart';

/// Result data returned by getGradientaiKnowledgeBaseDataSources.
class GetGradientaiKnowledgeBaseDataSourcesResult {
  final List<GetGradientaiKnowledgeBaseDataSourcesDatasource>? datasources;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? knowledgeBaseUuid;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesResult].
  /// [datasources] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBaseUuid] Optional.
  const GetGradientaiKnowledgeBaseDataSourcesResult({
    this.datasources,
    this.id,
    this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasources': ?(() { final guardedValue = datasources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesResult(
      datasources: (() { final guardedValue = map['datasources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasource>(guardedValue, (value) => GetGradientaiKnowledgeBaseDataSourcesDatasource.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
