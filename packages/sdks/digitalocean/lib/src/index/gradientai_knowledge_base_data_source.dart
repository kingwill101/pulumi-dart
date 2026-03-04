// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source_file_upload_data_source.dart';
import 'gradientai_knowledge_base_data_source_last_indexing_job.dart';
import 'gradientai_knowledge_base_data_source_spaces_data_source.dart';
import 'gradientai_knowledge_base_data_source_web_crawler_data_source.dart';

class GradientaiKnowledgeBaseDataSource {
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String>? createdAt;

  /// File upload data source configuration
  final pulumi.Input<
    List<GradientaiKnowledgeBaseDataSourceFileUploadDataSource>
  >?
  fileUploadDataSources;

  /// Last indexing job for the data source
  final pulumi.Input<List<GradientaiKnowledgeBaseDataSourceLastIndexingJob>>?
  lastIndexingJobs;

  /// Spaces data source configuration
  final pulumi.Input<List<GradientaiKnowledgeBaseDataSourceSpacesDataSource>>?
  spacesDataSources;

  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String>? updatedAt;

  /// UUID of the Knowledge Base
  final pulumi.Input<String>? uuid;

  /// Web crawler data source configuration
  final pulumi.Input<
    List<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>
  >?
  webCrawlerDataSources;

  /// Creates a new [GradientaiKnowledgeBaseDataSource].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [fileUploadDataSources] File upload data source configuration
  /// [lastIndexingJobs] Last indexing job for the data source
  /// [spacesDataSources] Spaces data source configuration
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uuid] UUID of the Knowledge Base
  /// [webCrawlerDataSources] Web crawler data source configuration
  GradientaiKnowledgeBaseDataSource({
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
      'fileUploadDataSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<GradientaiKnowledgeBaseDataSourceFileUploadDataSource>,
            List<Map<String, dynamic>>
          >(
            fileUploadDataSources,
            (value) =>
                pulumi.Input.encodeList<
                  GradientaiKnowledgeBaseDataSourceFileUploadDataSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastIndexingJobs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GradientaiKnowledgeBaseDataSourceLastIndexingJob>,
            List<Map<String, dynamic>>
          >(
            lastIndexingJobs,
            (value) =>
                pulumi.Input.encodeList<
                  GradientaiKnowledgeBaseDataSourceLastIndexingJob,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'spacesDataSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<GradientaiKnowledgeBaseDataSourceSpacesDataSource>,
            List<Map<String, dynamic>>
          >(
            spacesDataSources,
            (value) =>
                pulumi.Input.encodeList<
                  GradientaiKnowledgeBaseDataSourceSpacesDataSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>,
            List<Map<String, dynamic>>
          >(
            webCrawlerDataSources,
            (value) =>
                pulumi.Input.encodeList<
                  GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GradientaiKnowledgeBaseDataSource.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSource(
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileUploadDataSources: (() {
        final guardedValue = map['fileUploadDataSources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GradientaiKnowledgeBaseDataSourceFileUploadDataSource
          >(
            guardedValue,
            (value) =>
                GradientaiKnowledgeBaseDataSourceFileUploadDataSource.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      lastIndexingJobs: (() {
        final guardedValue = map['lastIndexingJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GradientaiKnowledgeBaseDataSourceLastIndexingJob
          >(
            guardedValue,
            (value) => GradientaiKnowledgeBaseDataSourceLastIndexingJob.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      spacesDataSources: (() {
        final guardedValue = map['spacesDataSources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GradientaiKnowledgeBaseDataSourceSpacesDataSource
          >(
            guardedValue,
            (value) =>
                GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      updatedAt: (() {
        final guardedValue = map['updatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uuid: (() {
        final guardedValue = map['uuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webCrawlerDataSources: (() {
        final guardedValue = map['webCrawlerDataSources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource
          >(
            guardedValue,
            (value) =>
                GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
