// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_knowledge_base_data_source_file_upload_data_source.dart';
import 'agent_platform_knowledge_base_data_source_last_indexing_job.dart';
import 'agent_platform_knowledge_base_data_source_spaces_data_source.dart';
import 'agent_platform_knowledge_base_data_source_web_crawler_data_source.dart';

class AgentPlatformKnowledgeBaseDataSource {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String?>? createdAt;
  /// File upload data source configuration
  final pulumi.Input<List<AgentPlatformKnowledgeBaseDataSourceFileUploadDataSource>?>? fileUploadDataSources;
  /// Last indexing job for the data source
  final pulumi.Input<List<AgentPlatformKnowledgeBaseDataSourceLastIndexingJob>?>? lastIndexingJobs;
  /// Spaces data source configuration
  final pulumi.Input<List<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource>?>? spacesDataSources;
  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String?>? updatedAt;
  /// UUID of the Knowledge Base
  final pulumi.Input<String?>? uuid;
  /// Web crawler data source configuration
  final pulumi.Input<List<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource>?>? webCrawlerDataSources;

  /// Creates a new [AgentPlatformKnowledgeBaseDataSource].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [fileUploadDataSources] File upload data source configuration
  /// [lastIndexingJobs] Last indexing job for the data source
  /// [spacesDataSources] Spaces data source configuration
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uuid] UUID of the Knowledge Base
  /// [webCrawlerDataSources] Web crawler data source configuration
  const AgentPlatformKnowledgeBaseDataSource({
    this.createdAt,
    this.fileUploadDataSources,
    this.lastIndexingJobs,
    this.spacesDataSources,
    this.updatedAt,
    this.uuid,
    this.webCrawlerDataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'fileUploadDataSources': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformKnowledgeBaseDataSourceFileUploadDataSource>, List<Map<String, dynamic>>>(fileUploadDataSources, (value) => pulumi.Input.encodeList<AgentPlatformKnowledgeBaseDataSourceFileUploadDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformKnowledgeBaseDataSourceLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<AgentPlatformKnowledgeBaseDataSourceLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spacesDataSources': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource>, List<Map<String, dynamic>>>(spacesDataSources, (value) => pulumi.Input.encodeList<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources': ?pulumi.Input.mapOptionalInputValue<List<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource>, List<Map<String, dynamic>>>(webCrawlerDataSources, (value) => pulumi.Input.encodeList<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentPlatformKnowledgeBaseDataSource.fromMap(Map<String, dynamic> map) {
    return AgentPlatformKnowledgeBaseDataSource(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileUploadDataSources: (() { final guardedValue = map['fileUploadDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSourceFileUploadDataSource>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSourceFileUploadDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastIndexingJobs: (() { final guardedValue = map['lastIndexingJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSourceLastIndexingJob>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSourceLastIndexingJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spacesDataSources: (() { final guardedValue = map['spacesDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSourceSpacesDataSource>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSourceSpacesDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webCrawlerDataSources: (() { final guardedValue = map['webCrawlerDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource>(guardedValue, (value) => AgentPlatformKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
