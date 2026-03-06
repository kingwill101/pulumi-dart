// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_data_sources_datasource_file_upload_data_source.dart';
import 'get_gradientai_knowledge_base_data_sources_datasource_last_indexing_job.dart';
import 'get_gradientai_knowledge_base_data_sources_datasource_spaces_data_source.dart';
import 'get_gradientai_knowledge_base_data_sources_datasource_web_crawler_data_source.dart';

class GetGradientaiKnowledgeBaseDataSourcesDatasource {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;
  /// File upload data source configuration
  final pulumi.Input<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>>? fileUploadDataSources;
  /// Last indexing job for the data source
  final pulumi.Input<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>>? lastIndexingJobs;
  /// Spaces data source configuration
  final pulumi.Input<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>>? spacesDataSources;
  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String> updatedAt;
  /// UUID of the Knowledge Base
  final pulumi.Input<String>? uuid;
  /// Web crawler data source configuration
  final pulumi.Input<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>>? webCrawlerDataSources;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesDatasource].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [fileUploadDataSources] File upload data source configuration
  /// [lastIndexingJobs] Last indexing job for the data source
  /// [spacesDataSources] Spaces data source configuration
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uuid] UUID of the Knowledge Base
  /// [webCrawlerDataSources] Web crawler data source configuration
  const GetGradientaiKnowledgeBaseDataSourcesDatasource({
    required this.createdAt,
    this.fileUploadDataSources,
    this.lastIndexingJobs,
    this.spacesDataSources,
    required this.updatedAt,
    this.uuid,
    this.webCrawlerDataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'fileUploadDataSources': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>, List<Map<String, dynamic>>>(fileUploadDataSources, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spacesDataSources': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>, List<Map<String, dynamic>>>(spacesDataSources, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>, List<Map<String, dynamic>>>(webCrawlerDataSources, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesDatasource.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesDatasource(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      fileUploadDataSources: (() { final guardedValue = map['fileUploadDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>(guardedValue, (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastIndexingJobs: (() { final guardedValue = map['lastIndexingJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>(guardedValue, (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spacesDataSources: (() { final guardedValue = map['spacesDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>(guardedValue, (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webCrawlerDataSources: (() { final guardedValue = map['webCrawlerDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>(guardedValue, (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

