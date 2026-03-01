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
    pulumi.Output<int>? completedDatasources,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<String>>? dataSourceUuids,
    pulumi.Output<String>? finishedAt,
    pulumi.Output<String>? knowledgeBaseUuid,
    pulumi.Output<String>? phase,
    pulumi.Output<String>? startedAt,
    pulumi.Output<String>? status,
    pulumi.Output<int>? tokens,
    pulumi.Output<int>? totalDatasources,
    pulumi.Output<int>? totalItemsFailed,
    pulumi.Output<int>? totalItemsIndexed,
    pulumi.Output<int>? totalItemsSkipped,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? uuid,
  }) :
      completedDatasources = pulumi.Input.asOptionalInput<int>(completedDatasources),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dataSourceUuids = pulumi.Input.asOptionalInput<List<String>>(dataSourceUuids),
      finishedAt = pulumi.Input.asOptionalInput<String>(finishedAt),
      knowledgeBaseUuid = pulumi.Input.asOptionalInput<String>(knowledgeBaseUuid),
      phase = pulumi.Input.asOptionalInput<String>(phase),
      startedAt = pulumi.Input.asOptionalInput<String>(startedAt),
      status = pulumi.Input.asOptionalInput<String>(status),
      tokens = pulumi.Input.asOptionalInput<int>(tokens),
      totalDatasources = pulumi.Input.asOptionalInput<int>(totalDatasources),
      totalItemsFailed = pulumi.Input.asOptionalInput<int>(totalItemsFailed),
      totalItemsIndexed = pulumi.Input.asOptionalInput<int>(totalItemsIndexed),
      totalItemsSkipped = pulumi.Input.asOptionalInput<int>(totalItemsSkipped),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      completedDatasources: map['completedDatasources'] == null ? null : pulumi.Output.create<int>(map['completedDatasources'] as int),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dataSourceUuids: map['dataSourceUuids'] == null ? null : pulumi.Output.create<List<String>>((map['dataSourceUuids'] as List).cast<String>()),
      finishedAt: map['finishedAt'] == null ? null : pulumi.Output.create<String>(map['finishedAt'] as String),
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : pulumi.Output.create<String>(map['knowledgeBaseUuid'] as String),
      phase: map['phase'] == null ? null : pulumi.Output.create<String>(map['phase'] as String),
      startedAt: map['startedAt'] == null ? null : pulumi.Output.create<String>(map['startedAt'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tokens: map['tokens'] == null ? null : pulumi.Output.create<int>(map['tokens'] as int),
      totalDatasources: map['totalDatasources'] == null ? null : pulumi.Output.create<int>(map['totalDatasources'] as int),
      totalItemsFailed: map['totalItemsFailed'] == null ? null : pulumi.Output.create<int>(map['totalItemsFailed'] as int),
      totalItemsIndexed: map['totalItemsIndexed'] == null ? null : pulumi.Output.create<int>(map['totalItemsIndexed'] as int),
      totalItemsSkipped: map['totalItemsSkipped'] == null ? null : pulumi.Output.create<int>(map['totalItemsSkipped'] as int),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

