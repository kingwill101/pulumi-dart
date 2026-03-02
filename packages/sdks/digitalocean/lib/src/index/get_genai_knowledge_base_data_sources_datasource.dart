// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_base_data_sources_datasource_file_upload_data_source.dart';
import 'get_genai_knowledge_base_data_sources_datasource_last_indexing_job.dart';
import 'get_genai_knowledge_base_data_sources_datasource_spaces_data_source.dart';
import 'get_genai_knowledge_base_data_sources_datasource_web_crawler_data_source.dart';

class GetGenaiKnowledgeBaseDataSourcesDatasource {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;
  /// File upload data source configuration
  final pulumi.Input<List<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>>? fileUploadDataSources;
  /// Last indexing job for the data source
  final pulumi.Input<List<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>>? lastIndexingJobs;
  /// Spaces data source configuration
  final pulumi.Input<List<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>>? spacesDataSources;
  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String> updatedAt;
  /// UUID of the Knowledge Base
  final pulumi.Input<String>? uuid;
  /// Web crawler data source configuration
  final pulumi.Input<List<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>>? webCrawlerDataSources;

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
      'fileUploadDataSources': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>, List<Map<String, dynamic>>>(fileUploadDataSources, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spacesDataSources': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>, List<Map<String, dynamic>>>(spacesDataSources, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>, List<Map<String, dynamic>>>(webCrawlerDataSources, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiKnowledgeBaseDataSourcesDatasource.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseDataSourcesDatasource(
      createdAt: (map['createdAt'] as String).input(),
      fileUploadDataSources: map['fileUploadDataSources'] == null ? null : (pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>(map['fileUploadDataSources']!, (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : (pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>(map['lastIndexingJobs']!, (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spacesDataSources: map['spacesDataSources'] == null ? null : (pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>(map['spacesDataSources']!, (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
      webCrawlerDataSources: map['webCrawlerDataSources'] == null ? null : (pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>(map['webCrawlerDataSources']!, (value) => GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

