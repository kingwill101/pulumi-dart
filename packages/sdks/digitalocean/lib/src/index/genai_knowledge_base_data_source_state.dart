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
    pulumi.Output<String>? knowledgeBaseUuid,
    pulumi.Output<GenaiKnowledgeBaseDataSourceSpacesDataSource>? spacesDataSource,
    pulumi.Output<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource>? webCrawlerDataSource,
  }) :
      knowledgeBaseUuid = pulumi.Input.asOptionalInput<String>(knowledgeBaseUuid),
      spacesDataSource = pulumi.Input.asOptionalInput<GenaiKnowledgeBaseDataSourceSpacesDataSource>(spacesDataSource),
      webCrawlerDataSource = pulumi.Input.asOptionalInput<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource>(webCrawlerDataSource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'spacesDataSource': ?pulumi.Input.mapOptionalInputValue<GenaiKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource': ?pulumi.Input.mapOptionalInputValue<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GenaiKnowledgeBaseDataSourceState.fromMap(Map<String, dynamic> map) {
    return GenaiKnowledgeBaseDataSourceState(
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : pulumi.Output.create<String>(map['knowledgeBaseUuid'] as String),
      spacesDataSource: map['spacesDataSource'] == null ? null : pulumi.Output.create<GenaiKnowledgeBaseDataSourceSpacesDataSource>(GenaiKnowledgeBaseDataSourceSpacesDataSource.fromMap((map['spacesDataSource'] as Map).cast<String, dynamic>())),
      webCrawlerDataSource: map['webCrawlerDataSource'] == null ? null : pulumi.Output.create<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource>(GenaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((map['webCrawlerDataSource'] as Map).cast<String, dynamic>())),
    );
  }
}

