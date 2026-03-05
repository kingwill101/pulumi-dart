// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiKnowledgeBaseLastIndexingJob {
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

  /// Creates a new [GetGenaiKnowledgeBaseLastIndexingJob].
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
  GetGenaiKnowledgeBaseLastIndexingJob({
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

  factory GetGenaiKnowledgeBaseLastIndexingJob.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseLastIndexingJob(
      completedDatasources: (() { final guardedValue = map['completedDatasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dataSourceUuids: (() { final guardedValue = map['dataSourceUuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      finishedAt: pulumi.Input.fromValue(map['finishedAt'] as String),
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedAt: pulumi.Input.fromValue(map['startedAt'] as String),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalDatasources: (() { final guardedValue = map['totalDatasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

