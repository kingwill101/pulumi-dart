// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiKnowledgeBaseIndexingJobsJob {
  /// Number of datasources indexed completed
  final pulumi.Input<int> completedDatasources;
  /// Creation timestamp
  final pulumi.Input<String> createdAt;
  /// List of data source UUIDs
  final pulumi.Input<List<String>> dataSourceUuids;
  /// Finish timestamp
  final pulumi.Input<String> finishedAt;
  /// Knowledge base UUID
  final pulumi.Input<String> knowledgeBaseUuid;
  /// Current phase of the batch job
  final pulumi.Input<String> phase;
  /// Start timestamp
  final pulumi.Input<String> startedAt;
  /// Status of the indexing job
  final pulumi.Input<String> status;
  /// Number of tokens
  final pulumi.Input<int> tokens;
  /// Total number of datasources being indexed
  final pulumi.Input<int> totalDatasources;
  /// Total items failed
  final pulumi.Input<String> totalItemsFailed;
  /// Total items indexed
  final pulumi.Input<String> totalItemsIndexed;
  /// Total items skipped
  final pulumi.Input<String> totalItemsSkipped;
  /// Last update timestamp
  final pulumi.Input<String> updatedAt;
  /// Unique identifier of the indexing job
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseIndexingJobsJob].
  /// [completedDatasources] Number of datasources indexed completed
  /// [createdAt] Creation timestamp
  /// [dataSourceUuids] List of data source UUIDs
  /// [finishedAt] Finish timestamp
  /// [knowledgeBaseUuid] Knowledge base UUID
  /// [phase] Current phase of the batch job
  /// [startedAt] Start timestamp
  /// [status] Status of the indexing job
  /// [tokens] Number of tokens
  /// [totalDatasources] Total number of datasources being indexed
  /// [totalItemsFailed] Total items failed
  /// [totalItemsIndexed] Total items indexed
  /// [totalItemsSkipped] Total items skipped
  /// [updatedAt] Last update timestamp
  /// [uuid] Unique identifier of the indexing job
  GetGradientaiKnowledgeBaseIndexingJobsJob({
    required this.completedDatasources,
    required this.createdAt,
    required this.dataSourceUuids,
    required this.finishedAt,
    required this.knowledgeBaseUuid,
    required this.phase,
    required this.startedAt,
    required this.status,
    required this.tokens,
    required this.totalDatasources,
    required this.totalItemsFailed,
    required this.totalItemsIndexed,
    required this.totalItemsSkipped,
    required this.updatedAt,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedDatasources': completedDatasources,
      'createdAt': createdAt,
      'dataSourceUuids': dataSourceUuids,
      'finishedAt': finishedAt,
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'phase': phase,
      'startedAt': startedAt,
      'status': status,
      'tokens': tokens,
      'totalDatasources': totalDatasources,
      'totalItemsFailed': totalItemsFailed,
      'totalItemsIndexed': totalItemsIndexed,
      'totalItemsSkipped': totalItemsSkipped,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseIndexingJobsJob.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseIndexingJobsJob(
      completedDatasources: (map['completedDatasources'] as int).input(),
      createdAt: (map['createdAt'] as String).input(),
      dataSourceUuids: ((map['dataSourceUuids'] as List).cast<String>()).input(),
      finishedAt: (map['finishedAt'] as String).input(),
      knowledgeBaseUuid: (map['knowledgeBaseUuid'] as String).input(),
      phase: (map['phase'] as String).input(),
      startedAt: (map['startedAt'] as String).input(),
      status: (map['status'] as String).input(),
      tokens: (map['tokens'] as int).input(),
      totalDatasources: (map['totalDatasources'] as int).input(),
      totalItemsFailed: (map['totalItemsFailed'] as String).input(),
      totalItemsIndexed: (map['totalItemsIndexed'] as String).input(),
      totalItemsSkipped: (map['totalItemsSkipped'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uuid: (map['uuid'] as String).input(),
    );
  }
}

