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
  final String createTime;

  /// The email address of the user who created the batch.
  final String creator;

  /// Optional. Environment configuration for the batch execution.
  final EnvironmentConfigResponse environmentConfig;

  /// Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  final Map<String, String> labels;

  /// The resource name of the batch.
  final String name;

  /// The resource name of the operation associated with this batch.
  final String operation;

  /// Optional. PySpark batch config.
  final PySparkBatchResponse pysparkBatch;

  /// Optional. Runtime configuration for the batch execution.
  final RuntimeConfigResponse runtimeConfig;

  /// Runtime information about batch execution.
  final RuntimeInfoResponse runtimeInfo;

  /// Optional. Spark batch config.
  final SparkBatchResponse sparkBatch;

  /// Optional. SparkR batch config.
  final SparkRBatchResponse sparkRBatch;

  /// Optional. SparkSql batch config.
  final SparkSqlBatchResponse sparkSqlBatch;

  /// The state of the batch.
  final String state;

  /// Historical state information for the batch.
  final List<StateHistoryResponse> stateHistory;

  /// Batch state details, such as a failure description if the state is FAILED.
  final String stateMessage;

  /// The time when the batch entered a current state.
  final String stateTime;

  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  final String uuid;

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
  GetBatchResult({
    required this.createTime,
    required this.creator,
    required this.environmentConfig,
    required this.labels,
    required this.name,
    required this.operation,
    required this.pysparkBatch,
    required this.runtimeConfig,
    required this.runtimeInfo,
    required this.sparkBatch,
    required this.sparkRBatch,
    required this.sparkSqlBatch,
    required this.state,
    required this.stateHistory,
    required this.stateMessage,
    required this.stateTime,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'creator': creator,
      'environmentConfig': environmentConfig.toMap(),
      'labels': labels,
      'name': name,
      'operation': operation,
      'pysparkBatch': pysparkBatch.toMap(),
      'runtimeConfig': runtimeConfig.toMap(),
      'runtimeInfo': runtimeInfo.toMap(),
      'sparkBatch': sparkBatch.toMap(),
      'sparkRBatch': sparkRBatch.toMap(),
      'sparkSqlBatch': sparkSqlBatch.toMap(),
      'state': state,
      'stateHistory':
          pulumi.Input.encodeList<StateHistoryResponse, Map<String, dynamic>>(
            stateHistory,
            (value) => value.toMap(),
          ),
      'stateMessage': stateMessage,
      'stateTime': stateTime,
      'uuid': uuid,
    };
  }

  factory GetBatchResult.fromMap(Map<String, dynamic> map) {
    return GetBatchResult(
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      environmentConfig: EnvironmentConfigResponse.fromMap(
        (map['environmentConfig']! as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      operation: map['operation'] as String,
      pysparkBatch: PySparkBatchResponse.fromMap(
        (map['pysparkBatch']! as Map).cast<String, dynamic>(),
      ),
      runtimeConfig: RuntimeConfigResponse.fromMap(
        (map['runtimeConfig']! as Map).cast<String, dynamic>(),
      ),
      runtimeInfo: RuntimeInfoResponse.fromMap(
        (map['runtimeInfo']! as Map).cast<String, dynamic>(),
      ),
      sparkBatch: SparkBatchResponse.fromMap(
        (map['sparkBatch']! as Map).cast<String, dynamic>(),
      ),
      sparkRBatch: SparkRBatchResponse.fromMap(
        (map['sparkRBatch']! as Map).cast<String, dynamic>(),
      ),
      sparkSqlBatch: SparkSqlBatchResponse.fromMap(
        (map['sparkSqlBatch']! as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
      stateHistory: pulumi.Input.decodeList<StateHistoryResponse>(
        map['stateHistory']!,
        (value) => StateHistoryResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      stateMessage: map['stateMessage'] as String,
      stateTime: map['stateTime'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
