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
    pulumi.Output<String>? batchId,
    pulumi.Output<EnvironmentConfig>? environmentConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<PySparkBatch>? pysparkBatch,
    pulumi.Output<String>? requestId,
    pulumi.Output<RuntimeConfig>? runtimeConfig,
    pulumi.Output<SparkBatch>? sparkBatch,
    pulumi.Output<SparkRBatch>? sparkRBatch,
    pulumi.Output<SparkSqlBatch>? sparkSqlBatch,
  }) :
      batchId = pulumi.Input.asOptionalInput<String>(batchId),
      environmentConfig = pulumi.Input.asOptionalInput<EnvironmentConfig>(environmentConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      pysparkBatch = pulumi.Input.asOptionalInput<PySparkBatch>(pysparkBatch),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      runtimeConfig = pulumi.Input.asOptionalInput<RuntimeConfig>(runtimeConfig),
      sparkBatch = pulumi.Input.asOptionalInput<SparkBatch>(sparkBatch),
      sparkRBatch = pulumi.Input.asOptionalInput<SparkRBatch>(sparkRBatch),
      sparkSqlBatch = pulumi.Input.asOptionalInput<SparkSqlBatch>(sparkSqlBatch);

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
      batchId: map['batchId'] == null ? null : pulumi.Output.create<String>(map['batchId'] as String),
      environmentConfig: map['environmentConfig'] == null ? null : pulumi.Output.create<EnvironmentConfig>(EnvironmentConfig.fromMap((map['environmentConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pysparkBatch: map['pysparkBatch'] == null ? null : pulumi.Output.create<PySparkBatch>(PySparkBatch.fromMap((map['pysparkBatch'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      runtimeConfig: map['runtimeConfig'] == null ? null : pulumi.Output.create<RuntimeConfig>(RuntimeConfig.fromMap((map['runtimeConfig'] as Map).cast<String, dynamic>())),
      sparkBatch: map['sparkBatch'] == null ? null : pulumi.Output.create<SparkBatch>(SparkBatch.fromMap((map['sparkBatch'] as Map).cast<String, dynamic>())),
      sparkRBatch: map['sparkRBatch'] == null ? null : pulumi.Output.create<SparkRBatch>(SparkRBatch.fromMap((map['sparkRBatch'] as Map).cast<String, dynamic>())),
      sparkSqlBatch: map['sparkSqlBatch'] == null ? null : pulumi.Output.create<SparkSqlBatch>(SparkSqlBatch.fromMap((map['sparkSqlBatch'] as Map).cast<String, dynamic>())),
    );
  }
}

