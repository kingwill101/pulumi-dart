// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_base_data_sources_datasource_file_upload_data_source.dart';
import 'get_genai_knowledge_base_data_sources_datasource_last_indexing_job.dart';
import 'get_genai_knowledge_base_data_sources_datasource_spaces_data_source.dart';
import 'get_genai_knowledge_base_data_sources_datasource_web_crawler_data_source.dart';

class GetGenaiKnowledgeBaseDataSourcesDatasource {
  /// Created At timestamp for the Knowledge Base
  final String createdAt;
  /// File upload data source configuration
  final List<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>? fileUploadDataSources;
  /// Last indexing job for the data source
  final List<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>? lastIndexingJobs;
  /// Spaces data source configuration
  final List<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>? spacesDataSources;
  /// Timestamp when the Knowledge Base was updated
  final String updatedAt;
  /// UUID of the Knowledge Base
  final String? uuid;
  /// Web crawler data source configuration
  final List<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>? webCrawlerDataSources;

  /// Creates a new [GetGenaiKnowledgeBaseDataSourcesDatasource].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [fileUploadDataSources] File upload data source configuration
  /// [lastIndexingJobs] Last indexing job for the data source
  /// [spacesDataSources] Spaces data source configuration
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uuid] UUID of the Knowledge Base
  /// [webCrawlerDataSources] Web crawler data source configuration
  GetGenaiKnowledgeBaseDataSourcesDatasource({
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
      'fileUploadDataSources': ?fileUploadDataSources == null ? null : pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource, Map<String, dynamic>>(fileUploadDataSources!, (value) => value.toMap()),
      'lastIndexingJobs': ?lastIndexingJobs == null ? null : pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob, Map<String, dynamic>>(lastIndexingJobs!, (value) => value.toMap()),
      'spacesDataSources': ?spacesDataSources == null ? null : pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource, Map<String, dynamic>>(spacesDataSources!, (value) => value.toMap()),
      'updatedAt': updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources': ?webCrawlerDataSources == null ? null : pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSources!, (value) => value.toMap()),
    };
  }

  factory GetGenaiKnowledgeBaseDataSourcesDatasource.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseDataSourcesDatasource(
      createdAt: map['createdAt'] as String,
      fileUploadDataSources: map['fileUploadDataSources'] == null ? null : pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>(map['fileUploadDataSources'], (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource.fromMap((value as Map).cast<String, dynamic>())),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())),
      spacesDataSources: map['spacesDataSources'] == null ? null : pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>(map['spacesDataSources'], (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource.fromMap((value as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      webCrawlerDataSources: map['webCrawlerDataSources'] == null ? null : pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>(map['webCrawlerDataSources'], (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

