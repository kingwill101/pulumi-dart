// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_data_sources_datasource.dart';

/// Result data returned by getGradientaiKnowledgeBaseDataSources.
class GetGradientaiKnowledgeBaseDataSourcesResult {
  final List<GetGradientaiKnowledgeBaseDataSourcesDatasource> datasources;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String knowledgeBaseUuid;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesResult].
  /// [datasources] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBaseUuid] Required.
  GetGradientaiKnowledgeBaseDataSourcesResult({
    required this.datasources,
    required this.id,
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasources':
          pulumi.Input.encodeList<
            GetGradientaiKnowledgeBaseDataSourcesDatasource,
            Map<String, dynamic>
          >(datasources, (value) => value.toMap()),
      'id': id,
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGradientaiKnowledgeBaseDataSourcesResult(
      datasources:
          pulumi.Input.decodeList<
            GetGradientaiKnowledgeBaseDataSourcesDatasource
          >(
            map['datasources']!,
            (value) => GetGradientaiKnowledgeBaseDataSourcesDatasource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
    );
  }
}
