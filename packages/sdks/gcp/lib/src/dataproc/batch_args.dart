// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_environment_config.dart';
import 'batch_pyspark_batch.dart';
import 'batch_runtime_config.dart';
import 'batch_spark_batch.dart';
import 'batch_spark_rbatch.dart';
import 'batch_spark_sql_batch.dart';

/// {@template pulumi_dataproc_batch_batch_args_doc}
/// The set of arguments for Batch.
/// {@endtemplate}
/// {@macro pulumi_dataproc_batch_batch_args_doc}
class BatchArgs {
  /// The ID to use for the batch, which will become the final component of the batch's resource name.
  /// This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  final pulumi.Input<String?>? batchId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Environment configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfig?>? environmentConfig;
  /// The labels to associate with this batch.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location in which the batch will be created in.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// PySpark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchPysparkBatch?>? pysparkBatch;
  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchRuntimeConfig?>? runtimeConfig;
  /// Spark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkBatch?>? sparkBatch;
  /// SparkR batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkRBatch?>? sparkRBatch;
  /// Spark SQL batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkSqlBatch?>? sparkSqlBatch;

  /// Creates a new [BatchArgs].
  /// [batchId] The ID to use for the batch, which will become the final component of the batch's resource name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [environmentConfig] Environment configuration for the batch execution.
  /// [labels] The labels to associate with this batch.
  /// [location] The location in which the batch will be created in.
  /// [project] The ID of the project in which the resource belongs.
  /// [pysparkBatch] PySpark batch config.
  /// [runtimeConfig] Runtime configuration for the batch execution.
  /// [sparkBatch] Spark batch config.
  /// [sparkRBatch] SparkR batch config.
  /// [sparkSqlBatch] Spark SQL batch config.
  const BatchArgs({
    this.batchId,
    this.deletionPolicy,
    this.environmentConfig,
    this.labels,
    this.location,
    this.project,
    this.pysparkBatch,
    this.runtimeConfig,
    this.sparkBatch,
    this.sparkRBatch,
    this.sparkSqlBatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': ?batchId,
      'deletionPolicy': ?deletionPolicy,
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<BatchEnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'pysparkBatch': ?pulumi.Input.mapOptionalInputValue<BatchPysparkBatch, Map<String, dynamic>>(pysparkBatch, (value) => value.toMap()),
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<BatchRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'sparkBatch': ?pulumi.Input.mapOptionalInputValue<BatchSparkBatch, Map<String, dynamic>>(sparkBatch, (value) => value.toMap()),
      'sparkRBatch': ?pulumi.Input.mapOptionalInputValue<BatchSparkRBatch, Map<String, dynamic>>(sparkRBatch, (value) => value.toMap()),
      'sparkSqlBatch': ?pulumi.Input.mapOptionalInputValue<BatchSparkSqlBatch, Map<String, dynamic>>(sparkSqlBatch, (value) => value.toMap()),
    };
  }

  factory BatchArgs.fromMap(Map<String, dynamic> map) {
    return BatchArgs(
      batchId: (() { final guardedValue = map['batchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pysparkBatch: (() { final guardedValue = map['pysparkBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchPysparkBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkBatch: (() { final guardedValue = map['sparkBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchSparkBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkRBatch: (() { final guardedValue = map['sparkRBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchSparkRBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlBatch: (() { final guardedValue = map['sparkSqlBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchSparkSqlBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
