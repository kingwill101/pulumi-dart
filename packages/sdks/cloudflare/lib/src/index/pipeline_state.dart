// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_table.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Indicates the reason for the failure of the Pipeline.
  final pulumi.Input<String?>? failureReason;
  final pulumi.Input<String?>? modifiedAt;
  /// Specifies the name of the Pipeline.
  final pulumi.Input<String?>? name;
  /// Specifies SQL for the Pipeline processing flow.
  final pulumi.Input<String?>? sql;
  /// Indicates the current status of the Pipeline.
  final pulumi.Input<String?>? status;
  /// List of streams and sinks used by this pipeline.
  final pulumi.Input<List<PipelineTable>?>? tables;

  /// Creates a new [PipelineState].
  /// [accountId] Specifies the public ID of the account.
  /// [createdAt] Optional.
  /// [failureReason] Indicates the reason for the failure of the Pipeline.
  /// [modifiedAt] Optional.
  /// [name] Specifies the name of the Pipeline.
  /// [sql] Specifies SQL for the Pipeline processing flow.
  /// [status] Indicates the current status of the Pipeline.
  /// [tables] List of streams and sinks used by this pipeline.
  const PipelineState({
    this.accountId,
    this.createdAt,
    this.failureReason,
    this.modifiedAt,
    this.name,
    this.sql,
    this.status,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'failureReason': ?failureReason,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'sql': ?sql,
      'status': ?status,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<PipelineTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<PipelineTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTable>(guardedValue, (value) => PipelineTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
