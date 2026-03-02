// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GradientaiIndexingJobCancel resources.
class GradientaiIndexingJobCancelState {
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

  /// Creates a new [GradientaiIndexingJobCancelState].
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
  GradientaiIndexingJobCancelState({
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

  factory GradientaiIndexingJobCancelState.fromMap(Map<String, dynamic> map) {
    return GradientaiIndexingJobCancelState(
      completedDatasources: map['completedDatasources'] == null ? null : (map['completedDatasources'] as int).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      dataSourceUuids: map['dataSourceUuids'] == null ? null : ((map['dataSourceUuids'] as List).cast<String>()).input(),
      finishedAt: map['finishedAt'] == null ? null : (map['finishedAt'] as String).input(),
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : (map['knowledgeBaseUuid'] as String).input(),
      phase: map['phase'] == null ? null : (map['phase'] as String).input(),
      startedAt: map['startedAt'] == null ? null : (map['startedAt'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tokens: map['tokens'] == null ? null : (map['tokens'] as int).input(),
      totalDatasources: map['totalDatasources'] == null ? null : (map['totalDatasources'] as int).input(),
      totalItemsFailed: map['totalItemsFailed'] == null ? null : (map['totalItemsFailed'] as int).input(),
      totalItemsIndexed: map['totalItemsIndexed'] == null ? null : (map['totalItemsIndexed'] as int).input(),
      totalItemsSkipped: map['totalItemsSkipped'] == null ? null : (map['totalItemsSkipped'] as int).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

