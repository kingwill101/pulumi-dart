// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source_spaces_data_source.dart';
import 'gradientai_knowledge_base_data_source_web_crawler_data_source.dart';

/// Input properties used for looking up and filtering GradientaiKnowledgeBaseDataSource resources.
class GradientaiKnowledgeBaseDataSourceState {
  /// UUID of the Knowledge Base
  final pulumi.Input<String>? knowledgeBaseUuid;
  final pulumi.Input<GradientaiKnowledgeBaseDataSourceSpacesDataSource>?
  spacesDataSource;
  final pulumi.Input<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>?
  webCrawlerDataSource;

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
      'spacesDataSource':
          ?pulumi.Input.mapOptionalInputValue<
            GradientaiKnowledgeBaseDataSourceSpacesDataSource,
            Map<String, dynamic>
          >(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource':
          ?pulumi.Input.mapOptionalInputValue<
            GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource,
            Map<String, dynamic>
          >(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GradientaiKnowledgeBaseDataSourceState.fromMap(
    Map<String, dynamic> map,
  ) {
    return GradientaiKnowledgeBaseDataSourceState(
      knowledgeBaseUuid: (() {
        final guardedValue = map['knowledgeBaseUuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spacesDataSource: (() {
        final guardedValue = map['spacesDataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webCrawlerDataSource: (() {
        final guardedValue = map['webCrawlerDataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
