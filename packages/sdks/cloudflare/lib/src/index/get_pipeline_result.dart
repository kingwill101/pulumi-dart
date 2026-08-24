// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_table.dart';

/// Result data returned by getPipeline.
class GetPipelineResult {
  /// Specifies the public ID of the account.
  final String? accountId;
  final String? createdAt;
  /// Indicates the reason for the failure of the Pipeline.
  final String? failureReason;
  /// Specifies the public ID of the pipeline.
  final String? id;
  final String? modifiedAt;
  /// Indicates the name of the Pipeline.
  final String? name;
  /// Specifies the public ID of the pipeline.
  final String? pipelineId;
  /// Specifies SQL for the Pipeline processing flow.
  final String? sql;
  /// Indicates the current status of the Pipeline.
  final String? status;
  /// List of streams and sinks used by this pipeline.
  final List<GetPipelineTable>? tables;

  /// Creates a new [GetPipelineResult].
  /// [accountId] Specifies the public ID of the account.
  /// [createdAt] Optional.
  /// [failureReason] Indicates the reason for the failure of the Pipeline.
  /// [id] Specifies the public ID of the pipeline.
  /// [modifiedAt] Optional.
  /// [name] Indicates the name of the Pipeline.
  /// [pipelineId] Specifies the public ID of the pipeline.
  /// [sql] Specifies SQL for the Pipeline processing flow.
  /// [status] Indicates the current status of the Pipeline.
  /// [tables] List of streams and sinks used by this pipeline.
  const GetPipelineResult({
    this.accountId,
    this.createdAt,
    this.failureReason,
    this.id,
    this.modifiedAt,
    this.name,
    this.pipelineId,
    this.sql,
    this.status,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'failureReason': ?failureReason,
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'pipelineId': ?pipelineId,
      'sql': ?sql,
      'status': ?status,
      'tables': ?(() { final guardedValue = tables; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPipelineTable, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPipelineTable>(guardedValue, (value) => GetPipelineTable.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
