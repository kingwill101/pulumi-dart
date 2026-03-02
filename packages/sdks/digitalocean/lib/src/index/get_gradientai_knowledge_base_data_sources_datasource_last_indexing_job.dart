// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob {
  /// Number of completed datasources in the last indexing job
  final pulumi.Input<int>? completedDatasources;
  /// Created At timestamp for the last indexing job
  final pulumi.Input<String> createdAt;
  /// Datasource UUIDs for the last indexing job
  final pulumi.Input<List<String>>? dataSourceUuids;
  /// Timestamp when the last indexing job finished
  final pulumi.Input<String> finishedAt;
  /// UUID  of the Knowledge Base for the last indexing job
  final pulumi.Input<String> knowledgeBaseUuid;
  /// Phase of the last indexing job
  final pulumi.Input<String>? phase;
  /// Timestamp when the last indexing job started
  final pulumi.Input<String> startedAt;
  /// Number of tokens processed in the last indexing job
  final pulumi.Input<int>? tokens;
  /// Total number of datasources in the last indexing job
  final pulumi.Input<int>? totalDatasources;
  /// Timestamp when the last indexing job updated
  final pulumi.Input<String> updatedAt;
  /// UUID  of the last indexing job
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob].
  /// [completedDatasources] Number of completed datasources in the last indexing job
  /// [createdAt] Created At timestamp for the last indexing job
  /// [dataSourceUuids] Datasource UUIDs for the last indexing job
  /// [finishedAt] Timestamp when the last indexing job finished
  /// [knowledgeBaseUuid] UUID  of the Knowledge Base for the last indexing job
  /// [phase] Phase of the last indexing job
  /// [startedAt] Timestamp when the last indexing job started
  /// [tokens] Number of tokens processed in the last indexing job
  /// [totalDatasources] Total number of datasources in the last indexing job
  /// [updatedAt] Timestamp when the last indexing job updated
  /// [uuid] UUID  of the last indexing job
  GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob({
    this.completedDatasources,
    required this.createdAt,
    this.dataSourceUuids,
    required this.finishedAt,
    required this.knowledgeBaseUuid,
    this.phase,
    required this.startedAt,
    this.tokens,
    this.totalDatasources,
    required this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedDatasources': ?completedDatasources,
      'createdAt': createdAt,
      'dataSourceUuids': ?dataSourceUuids,
      'finishedAt': finishedAt,
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'phase': ?phase,
      'startedAt': startedAt,
      'tokens': ?tokens,
      'totalDatasources': ?totalDatasources,
      'updatedAt': updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob(
      completedDatasources: map['completedDatasources'] == null ? null : (map['completedDatasources']! as int).input(),
      createdAt: (map['createdAt'] as String).input(),
      dataSourceUuids: map['dataSourceUuids'] == null ? null : ((map['dataSourceUuids']! as List).cast<String>()).input(),
      finishedAt: (map['finishedAt'] as String).input(),
      knowledgeBaseUuid: (map['knowledgeBaseUuid'] as String).input(),
      phase: map['phase'] == null ? null : (map['phase']! as String).input(),
      startedAt: (map['startedAt'] as String).input(),
      tokens: map['tokens'] == null ? null : (map['tokens']! as int).input(),
      totalDatasources: map['totalDatasources'] == null ? null : (map['totalDatasources']! as int).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

