// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_response.dart';
import 'py_spark_batch_response.dart';
import 'runtime_config_response.dart';
import 'runtime_info_response.dart';
import 'spark_batch_response.dart';
import 'spark_rbatch_response.dart';
import 'spark_sql_batch_response.dart';
import 'state_history_response.dart';

/// Result data returned by getBatch.
class GetBatchResult {
  /// The time when the batch was created.
  final String? createTime;
  /// The email address of the user who created the batch.
  final String? creator;
  /// Optional. Environment configuration for the batch execution.
  final EnvironmentConfigResponse? environmentConfig;
  /// Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  final Map<String, String>? labels;
  /// The resource name of the batch.
  final String? name;
  /// The resource name of the operation associated with this batch.
  final String? operation;
  /// Optional. PySpark batch config.
  final PySparkBatchResponse? pysparkBatch;
  /// Optional. Runtime configuration for the batch execution.
  final RuntimeConfigResponse? runtimeConfig;
  /// Runtime information about batch execution.
  final RuntimeInfoResponse? runtimeInfo;
  /// Optional. Spark batch config.
  final SparkBatchResponse? sparkBatch;
  /// Optional. SparkR batch config.
  final SparkRBatchResponse? sparkRBatch;
  /// Optional. SparkSql batch config.
  final SparkSqlBatchResponse? sparkSqlBatch;
  /// The state of the batch.
  final String? state;
  /// Historical state information for the batch.
  final List<StateHistoryResponse>? stateHistory;
  /// Batch state details, such as a failure description if the state is FAILED.
  final String? stateMessage;
  /// The time when the batch entered a current state.
  final String? stateTime;
  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  final String? uuid;

  /// Creates a new [GetBatchResult].
  /// [createTime] The time when the batch was created.
  /// [creator] The email address of the user who created the batch.
  /// [environmentConfig] Optional. Environment configuration for the batch execution.
  /// [labels] Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  /// [name] The resource name of the batch.
  /// [operation] The resource name of the operation associated with this batch.
  /// [pysparkBatch] Optional. PySpark batch config.
  /// [runtimeConfig] Optional. Runtime configuration for the batch execution.
  /// [runtimeInfo] Runtime information about batch execution.
  /// [sparkBatch] Optional. Spark batch config.
  /// [sparkRBatch] Optional. SparkR batch config.
  /// [sparkSqlBatch] Optional. SparkSql batch config.
  /// [state] The state of the batch.
  /// [stateHistory] Historical state information for the batch.
  /// [stateMessage] Batch state details, such as a failure description if the state is FAILED.
  /// [stateTime] The time when the batch entered a current state.
  /// [uuid] A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  const GetBatchResult({
    this.createTime,
    this.creator,
    this.environmentConfig,
    this.labels,
    this.name,
    this.operation,
    this.pysparkBatch,
    this.runtimeConfig,
    this.runtimeInfo,
    this.sparkBatch,
    this.sparkRBatch,
    this.sparkSqlBatch,
    this.state,
    this.stateHistory,
    this.stateMessage,
    this.stateTime,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creator': ?creator,
      'environmentConfig': ?environmentConfig?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'operation': ?operation,
      'pysparkBatch': ?pysparkBatch?.toMap(),
      'runtimeConfig': ?runtimeConfig?.toMap(),
      'runtimeInfo': ?runtimeInfo?.toMap(),
      'sparkBatch': ?sparkBatch?.toMap(),
      'sparkRBatch': ?sparkRBatch?.toMap(),
      'sparkSqlBatch': ?sparkSqlBatch?.toMap(),
      'state': ?state,
      'stateHistory': ?(() { final guardedValue = stateHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<StateHistoryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'stateMessage': ?stateMessage,
      'stateTime': ?stateTime,
      'uuid': ?uuid,
    };
  }

  factory GetBatchResult.fromMap(Map<String, dynamic> map) {
    return GetBatchResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return EnvironmentConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pysparkBatch: (() { final guardedValue = map['pysparkBatch']; if (guardedValue == null) return null; return PySparkBatchResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return RuntimeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runtimeInfo: (() { final guardedValue = map['runtimeInfo']; if (guardedValue == null) return null; return RuntimeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sparkBatch: (() { final guardedValue = map['sparkBatch']; if (guardedValue == null) return null; return SparkBatchResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sparkRBatch: (() { final guardedValue = map['sparkRBatch']; if (guardedValue == null) return null; return SparkRBatchResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sparkSqlBatch: (() { final guardedValue = map['sparkSqlBatch']; if (guardedValue == null) return null; return SparkSqlBatchResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateHistory: (() { final guardedValue = map['stateHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StateHistoryResponse>(guardedValue, (value) => StateHistoryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
