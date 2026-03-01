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
    required pulumi.Output<String> knowledgeBaseUuid,
    pulumi.Output<GradientaiKnowledgeBaseDataSourceSpacesDataSource>? spacesDataSource,
    pulumi.Output<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>? webCrawlerDataSource,
  }) :
      knowledgeBaseUuid = pulumi.Input.asInput<String>(knowledgeBaseUuid),
      spacesDataSource = pulumi.Input.asOptionalInput<GradientaiKnowledgeBaseDataSourceSpacesDataSource>(spacesDataSource),
      webCrawlerDataSource = pulumi.Input.asOptionalInput<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>(webCrawlerDataSource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'spacesDataSource': ?pulumi.Input.mapOptionalInputValue<GradientaiKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSource, (value) => value.toMap()),
      'webCrawlerDataSource': ?pulumi.Input.mapOptionalInputValue<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSource, (value) => value.toMap()),
    };
  }

  factory GradientaiKnowledgeBaseDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSourceArgs(
      knowledgeBaseUuid: pulumi.Output.create<String>(map['knowledgeBaseUuid'] as String),
      spacesDataSource: map['spacesDataSource'] == null ? null : pulumi.Output.create<GradientaiKnowledgeBaseDataSourceSpacesDataSource>(GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap((map['spacesDataSource'] as Map).cast<String, dynamic>())),
      webCrawlerDataSource: map['webCrawlerDataSource'] == null ? null : pulumi.Output.create<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>(GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((map['webCrawlerDataSource'] as Map).cast<String, dynamic>())),
    );
  }
}

