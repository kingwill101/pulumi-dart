// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'py_spark_batch.dart';
import 'runtime_config.dart';
import 'spark_batch.dart';
import 'spark_rbatch.dart';
import 'spark_sql_batch.dart';

/// {@template pulumi_dataproc_v1_batch_args_doc}
/// The set of arguments for Batch.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_batch_args_doc}
class BatchArgs {
  /// Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  final pulumi.Input<String>? batchId;
  /// Optional. Environment configuration for the batch execution.
  final pulumi.Input<EnvironmentConfig>? environmentConfig;
  /// Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. PySpark batch config.
  final pulumi.Input<PySparkBatch>? pysparkBatch;
  /// Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. Runtime configuration for the batch execution.
  final pulumi.Input<RuntimeConfig>? runtimeConfig;
  /// Optional. Spark batch config.
  final pulumi.Input<SparkBatch>? sparkBatch;
  /// Optional. SparkR batch config.
  final pulumi.Input<SparkRBatch>? sparkRBatch;
  /// Optional. SparkSql batch config.
  final pulumi.Input<SparkSqlBatch>? sparkSqlBatch;

  /// Creates a new [BatchArgs].
  /// [batchId] Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  /// [environmentConfig] Optional. Environment configuration for the batch execution.
  /// [labels] Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  /// [location] Optional.
  /// [project] Optional.
  /// [pysparkBatch] Optional. PySpark batch config.
  /// [requestId] Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [runtimeConfig] Optional. Runtime configuration for the batch execution.
  /// [sparkBatch] Optional. Spark batch config.
  /// [sparkRBatch] Optional. SparkR batch config.
  /// [sparkSqlBatch] Optional. SparkSql batch config.
  BatchArgs({
    this.batchId,
    this.environmentConfig,
    this.labels,
    this.location,
    this.project,
    this.pysparkBatch,
    this.requestId,
    this.runtimeConfig,
    this.sparkBatch,
    this.sparkRBatch,
    this.sparkSqlBatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': ?batchId,
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'pysparkBatch': ?pulumi.Input.mapOptionalInputValue<PySparkBatch, Map<String, dynamic>>(pysparkBatch, (value) => value.toMap()),
      'requestId': ?requestId,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'sparkBatch': ?pulumi.Input.mapOptionalInputValue<SparkBatch, Map<String, dynamic>>(sparkBatch, (value) => value.toMap()),
      'sparkRBatch': ?pulumi.Input.mapOptionalInputValue<SparkRBatch, Map<String, dynamic>>(sparkRBatch, (value) => value.toMap()),
      'sparkSqlBatch': ?pulumi.Input.mapOptionalInputValue<SparkSqlBatch, Map<String, dynamic>>(sparkSqlBatch, (value) => value.toMap()),
    };
  }

  factory BatchArgs.fromMap(Map<String, dynamic> map) {
    return BatchArgs(
      batchId: (() { final guardedValue = map['batchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pysparkBatch: (() { final guardedValue = map['pysparkBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PySparkBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkBatch: (() { final guardedValue = map['sparkBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkRBatch: (() { final guardedValue = map['sparkRBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkRBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlBatch: (() { final guardedValue = map['sparkSqlBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkSqlBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

