// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_knowledge_base_data_source_spaces_data_source.dart';
import 'genai_knowledge_base_data_source_web_crawler_data_source.dart';

/// Input properties used for looking up and filtering GenaiKnowledgeBaseDataSource resources.
class GenaiKnowledgeBaseDataSourceState {
  /// UUID of the Knowledge Base
  final pulumi.Input<String>? knowledgeBaseUuid;
  final pulumi.Input<GenaiKnowledgeBaseDataSourceSpacesDataSource>? spacesDataSource;
  final pulumi.Input<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource>? webCrawlerDataSource;

  /// Creates a new [GenaiKnowledgeBaseDataSourceState].
  /// [knowledgeBaseUuid] UUID of the Knowledge Base
  /// [spacesDataSource] Optional.
  /// [webCrawlerDataSource] Optional.
  GenaiKnowledgeBaseDataSourceState({
    this.knowledgeBaseUuid,
    this.spacesDataSource,
    this.webCrawlerDataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'spacesDataSource': ?pulumi.Input.mapOptionalInputValue<GenaiKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource': ?pulumi.Input.mapOptionalInputValue<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GenaiKnowledgeBaseDataSourceState.fromMap(Map<String, dynamic> map) {
    return GenaiKnowledgeBaseDataSourceState(
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : (map['knowledgeBaseUuid']! as String).input(),
      spacesDataSource: map['spacesDataSource'] == null ? null : (GenaiKnowledgeBaseDataSourceSpacesDataSource.fromMap((map['spacesDataSource']! as Map).cast<String, dynamic>())).input(),
      webCrawlerDataSource: map['webCrawlerDataSource'] == null ? null : (GenaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((map['webCrawlerDataSource']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

