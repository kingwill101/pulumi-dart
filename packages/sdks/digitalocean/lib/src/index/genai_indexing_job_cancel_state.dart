// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GenaiIndexingJobCancel resources.
class GenaiIndexingJobCancelState {
  /// Number of data sources that were completed before cancellation.
  final pulumi.Input<int>? completedDatasources;
  /// When the indexing job was created.
  final pulumi.Input<String>? createdAt;
  /// List of data source UUIDs associated with this indexing job.
  final pulumi.Input<List<String>>? dataSourceUuids;
  /// When the indexing job was finished.
  final pulumi.Input<String>? finishedAt;
  /// The UUID of the knowledge base associated with this indexing job.
  final pulumi.Input<String>? knowledgeBaseUuid;
  /// Current phase of the indexing job.
  final pulumi.Input<String>? phase;
  /// When the indexing job was started.
  final pulumi.Input<String>? startedAt;
  /// The status of the indexing job after cancellation.
  final pulumi.Input<String>? status;
  /// Number of tokens processed before cancellation.
  final pulumi.Input<int>? tokens;
  /// Total number of data sources in the indexing job.
  final pulumi.Input<int>? totalDatasources;
  /// Total number of items that failed during indexing.
  final pulumi.Input<int>? totalItemsFailed;
  /// Total number of items that were successfully indexed.
  final pulumi.Input<int>? totalItemsIndexed;
  /// Total number of items that were skipped during indexing.
  final pulumi.Input<int>? totalItemsSkipped;
  /// When the indexing job was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The UUID of the indexing job to cancel.
  final pulumi.Input<String>? uuid;

  /// Creates a new [GenaiIndexingJobCancelState].
  /// [completedDatasources] Number of data sources that were completed before cancellation.
  /// [createdAt] When the indexing job was created.
  /// [dataSourceUuids] List of data source UUIDs associated with this indexing job.
  /// [finishedAt] When the indexing job was finished.
  /// [knowledgeBaseUuid] The UUID of the knowledge base associated with this indexing job.
  /// [phase] Current phase of the indexing job.
  /// [startedAt] When the indexing job was started.
  /// [status] The status of the indexing job after cancellation.
  /// [tokens] Number of tokens processed before cancellation.
  /// [totalDatasources] Total number of data sources in the indexing job.
  /// [totalItemsFailed] Total number of items that failed during indexing.
  /// [totalItemsIndexed] Total number of items that were successfully indexed.
  /// [totalItemsSkipped] Total number of items that were skipped during indexing.
  /// [updatedAt] When the indexing job was last updated.
  /// [uuid] The UUID of the indexing job to cancel.
  GenaiIndexingJobCancelState({
    this.completedDatasources,
    this.createdAt,
    this.dataSourceUuids,
    this.finishedAt,
    this.knowledgeBaseUuid,
    this.phase,
    this.startedAt,
    this.status,
    this.tokens,
    this.totalDatasources,
    this.totalItemsFailed,
    this.totalItemsIndexed,
    this.totalItemsSkipped,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedDatasources': ?completedDatasources,
      'createdAt': ?createdAt,
      'dataSourceUuids': ?dataSourceUuids,
      'finishedAt': ?finishedAt,
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
      'phase': ?phase,
      'startedAt': ?startedAt,
      'status': ?status,
      'tokens': ?tokens,
      'totalDatasources': ?totalDatasources,
      'totalItemsFailed': ?totalItemsFailed,
      'totalItemsIndexed': ?totalItemsIndexed,
      'totalItemsSkipped': ?totalItemsSkipped,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GenaiIndexingJobCancelState.fromMap(Map<String, dynamic> map) {
    return GenaiIndexingJobCancelState(
      completedDatasources: (() { final guardedValue = map['completedDatasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceUuids: (() { final guardedValue = map['dataSourceUuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      finishedAt: (() { final guardedValue = map['finishedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalDatasources: (() { final guardedValue = map['totalDatasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalItemsFailed: (() { final guardedValue = map['totalItemsFailed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalItemsIndexed: (() { final guardedValue = map['totalItemsIndexed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalItemsSkipped: (() { final guardedValue = map['totalItemsSkipped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

