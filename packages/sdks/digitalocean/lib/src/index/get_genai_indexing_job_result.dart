// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGenaiIndexingJob.
class GetGenaiIndexingJobResult {
  final int? completedDatasources;
  final String? createdAt;
  final List<String>? dataSourceUuids;
  final String? finishedAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? knowledgeBaseUuid;
  final String? phase;
  final String? startedAt;
  final String? status;
  final int? tokens;
  final int? totalDatasources;
  final String? totalItemsFailed;
  final String? totalItemsIndexed;
  final String? totalItemsSkipped;
  final String? updatedAt;
  final String? uuid;

  /// Creates a new [GetGenaiIndexingJobResult].
  /// [completedDatasources] Optional.
  /// [createdAt] Optional.
  /// [dataSourceUuids] Optional.
  /// [finishedAt] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBaseUuid] Optional.
  /// [phase] Optional.
  /// [startedAt] Optional.
  /// [status] Optional.
  /// [tokens] Optional.
  /// [totalDatasources] Optional.
  /// [totalItemsFailed] Optional.
  /// [totalItemsIndexed] Optional.
  /// [totalItemsSkipped] Optional.
  /// [updatedAt] Optional.
  /// [uuid] Optional.
  const GetGenaiIndexingJobResult({
    this.completedDatasources,
    this.createdAt,
    this.dataSourceUuids,
    this.finishedAt,
    this.id,
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
      'id': ?id,
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

  factory GetGenaiIndexingJobResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiIndexingJobResult(
      completedDatasources: (() { final guardedValue = map['completedDatasources']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceUuids: (() { final guardedValue = map['dataSourceUuids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      finishedAt: (() { final guardedValue = map['finishedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      totalDatasources: (() { final guardedValue = map['totalDatasources']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      totalItemsFailed: (() { final guardedValue = map['totalItemsFailed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalItemsIndexed: (() { final guardedValue = map['totalItemsIndexed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalItemsSkipped: (() { final guardedValue = map['totalItemsSkipped']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
