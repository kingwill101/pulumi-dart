// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_knowledge_base_data_source_spaces_data_source.dart';
import 'genai_knowledge_base_data_source_web_crawler_data_source.dart';

/// Input properties used for looking up and filtering GenaiKnowledgeBaseDataSource resources.
class GenaiKnowledgeBaseDataSourceState {
  /// UUID of the Knowledge Base
  final pulumi.Input<String>? knowledgeBaseUuid;
  final pulumi.Input<GenaiKnowledgeBaseDataSourceSpacesDataSource>?
  spacesDataSource;
  final pulumi.Input<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource>?
  webCrawlerDataSource;

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
      'spacesDataSource':
          ?pulumi.Input.mapOptionalInputValue<
            GenaiKnowledgeBaseDataSourceSpacesDataSource,
            Map<String, dynamic>
          >(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource':
          ?pulumi.Input.mapOptionalInputValue<
            GenaiKnowledgeBaseDataSourceWebCrawlerDataSource,
            Map<String, dynamic>
          >(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GenaiKnowledgeBaseDataSourceState.fromMap(Map<String, dynamic> map) {
    return GenaiKnowledgeBaseDataSourceState(
      knowledgeBaseUuid: (() {
        final guardedValue = map['knowledgeBaseUuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spacesDataSource: (() {
        final guardedValue = map['spacesDataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GenaiKnowledgeBaseDataSourceSpacesDataSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webCrawlerDataSource: (() {
        final guardedValue = map['webCrawlerDataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GenaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
