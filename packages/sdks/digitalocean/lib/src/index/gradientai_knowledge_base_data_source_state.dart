// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source_spaces_data_source.dart';
import 'gradientai_knowledge_base_data_source_web_crawler_data_source.dart';

/// Input properties used for looking up and filtering GradientaiKnowledgeBaseDataSource resources.
class GradientaiKnowledgeBaseDataSourceState {
  /// UUID of the Knowledge Base
  final pulumi.Input<String>? knowledgeBaseUuid;
  final pulumi.Input<GradientaiKnowledgeBaseDataSourceSpacesDataSource>? spacesDataSource;
  final pulumi.Input<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>? webCrawlerDataSource;

  /// Creates a new [GradientaiKnowledgeBaseDataSourceState].
  /// [knowledgeBaseUuid] UUID of the Knowledge Base
  /// [spacesDataSource] Optional.
  /// [webCrawlerDataSource] Optional.
  GradientaiKnowledgeBaseDataSourceState({
    this.knowledgeBaseUuid,
    this.spacesDataSource,
    this.webCrawlerDataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'spacesDataSource': ?pulumi.Input.mapOptionalInputValue<GradientaiKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource': ?pulumi.Input.mapOptionalInputValue<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GradientaiKnowledgeBaseDataSourceState.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSourceState(
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : (map['knowledgeBaseUuid'] as String).input(),
      spacesDataSource: map['spacesDataSource'] == null ? null : (GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap((map['spacesDataSource'] as Map).cast<String, dynamic>())).input(),
      webCrawlerDataSource: map['webCrawlerDataSource'] == null ? null : (GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((map['webCrawlerDataSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

