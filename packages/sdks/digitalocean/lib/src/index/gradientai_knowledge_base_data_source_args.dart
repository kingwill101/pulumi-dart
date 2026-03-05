// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source_spaces_data_source.dart';
import 'gradientai_knowledge_base_data_source_web_crawler_data_source.dart';

/// {@template pulumi_index_gradientai_knowledge_base_data_source_gradientai_knowledge_base_data_source_args_doc}
/// The set of arguments for GradientaiKnowledgeBaseDataSource.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_knowledge_base_data_source_gradientai_knowledge_base_data_source_args_doc}
class GradientaiKnowledgeBaseDataSourceArgs {
  /// UUID of the Knowledge Base
  final pulumi.Input<String> knowledgeBaseUuid;
  final pulumi.Input<GradientaiKnowledgeBaseDataSourceSpacesDataSource>? spacesDataSource;
  final pulumi.Input<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>? webCrawlerDataSource;

  /// Creates a new [GradientaiKnowledgeBaseDataSourceArgs].
  /// [knowledgeBaseUuid] UUID of the Knowledge Base
  /// [spacesDataSource] Optional.
  /// [webCrawlerDataSource] Optional.
  GradientaiKnowledgeBaseDataSourceArgs({
    required this.knowledgeBaseUuid,
    this.spacesDataSource,
    this.webCrawlerDataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'spacesDataSource': ?pulumi.Input.mapOptionalInputValue<GradientaiKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource': ?pulumi.Input.mapOptionalInputValue<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GradientaiKnowledgeBaseDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSourceArgs(
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
      spacesDataSource: (() { final guardedValue = map['spacesDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webCrawlerDataSource: (() { final guardedValue = map['webCrawlerDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

