// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGradientaiIndexingJob.
class GetGradientaiIndexingJobResult {
  final int completedDatasources;
  final String createdAt;
  final List<String> dataSourceUuids;
  final String finishedAt;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String knowledgeBaseUuid;
  final String phase;
  final String startedAt;
  final String status;
  final int tokens;
  final int totalDatasources;
  final String totalItemsFailed;
  final String totalItemsIndexed;
  final String totalItemsSkipped;
  final String updatedAt;
  final String uuid;

  /// Creates a new [GetGradientaiIndexingJobResult].
  /// [completedDatasources] Required.
  /// [createdAt] Required.
  /// [dataSourceUuids] Required.
  /// [finishedAt] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBaseUuid] Required.
  /// [phase] Required.
  /// [startedAt] Required.
  /// [status] Required.
  /// [tokens] Required.
  /// [totalDatasources] Required.
  /// [totalItemsFailed] Required.
  /// [totalItemsIndexed] Required.
  /// [totalItemsSkipped] Required.
  /// [updatedAt] Required.
  /// [uuid] Required.
  GetGradientaiIndexingJobResult({
    required this.completedDatasources,
    required this.createdAt,
    required this.dataSourceUuids,
    required this.finishedAt,
    required this.id,
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
      'id': id,
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

  factory GetGradientaiIndexingJobResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiIndexingJobResult(
      completedDatasources: map['completedDatasources'] as int,
      createdAt: map['createdAt'] as String,
      dataSourceUuids: (map['dataSourceUuids'] as List).cast<String>(),
      finishedAt: map['finishedAt'] as String,
      id: map['id'] as String,
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
      phase: map['phase'] as String,
      startedAt: map['startedAt'] as String,
      status: map['status'] as String,
      tokens: map['tokens'] as int,
      totalDatasources: map['totalDatasources'] as int,
      totalItemsFailed: map['totalItemsFailed'] as String,
      totalItemsIndexed: map['totalItemsIndexed'] as String,
      totalItemsSkipped: map['totalItemsSkipped'] as String,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
