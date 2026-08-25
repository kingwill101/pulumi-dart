// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_environment_config.dart';
import 'batch_pyspark_batch.dart';
import 'batch_runtime_config.dart';
import 'batch_runtime_info.dart';
import 'batch_spark_batch.dart';
import 'batch_spark_rbatch.dart';
import 'batch_spark_sql_batch.dart';
import 'batch_state_history.dart';

/// Input properties used for looking up and filtering Batch resources.
class BatchState {
  /// The ID to use for the batch, which will become the final component of the batch's resource name.
  /// This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  final pulumi.Input<String?>? batchId;
  /// The time when the batch was created.
  final pulumi.Input<String?>? createTime;
  /// The email address of the user who created the batch.
  final pulumi.Input<String?>? creator;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
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
  /// The resource name of the batch.
  final pulumi.Input<String?>? name;
  /// The resource name of the operation associated with this batch.
  final pulumi.Input<String?>? operation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// PySpark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchPysparkBatch?>? pysparkBatch;
  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchRuntimeConfig?>? runtimeConfig;
  /// Runtime information about batch execution.
  /// Structure is documented below.
  final pulumi.Input<List<BatchRuntimeInfo>?>? runtimeInfos;
  /// Spark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkBatch?>? sparkBatch;
  /// SparkR batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkRBatch?>? sparkRBatch;
  /// Spark SQL batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkSqlBatch?>? sparkSqlBatch;
  /// (Output)
  /// The state of the batch at this point in history. For possible values, see the [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches#State).
  final pulumi.Input<String?>? state;
  /// Historical state information for the batch.
  /// Structure is documented below.
  final pulumi.Input<List<BatchStateHistory>?>? stateHistories;
  /// (Output)
  /// Details about the state at this point in history.
  final pulumi.Input<String?>? stateMessage;
  /// Batch state details, such as a failure description if the state is FAILED.
  final pulumi.Input<String?>? stateTime;
  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  final pulumi.Input<String?>? uuid;

  /// Creates a new [BatchState].
  /// [batchId] The ID to use for the batch, which will become the final component of the batch's resource name.
  /// [createTime] The time when the batch was created.
  /// [creator] The email address of the user who created the batch.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [environmentConfig] Environment configuration for the batch execution.
  /// [labels] The labels to associate with this batch.
  /// [location] The location in which the batch will be created in.
  /// [name] The resource name of the batch.
  /// [operation] The resource name of the operation associated with this batch.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [pysparkBatch] PySpark batch config.
  /// [runtimeConfig] Runtime configuration for the batch execution.
  /// [runtimeInfos] Runtime information about batch execution.
  /// [sparkBatch] Spark batch config.
  /// [sparkRBatch] SparkR batch config.
  /// [sparkSqlBatch] Spark SQL batch config.
  /// [state] (Output)
  /// [stateHistories] Historical state information for the batch.
  /// [stateMessage] (Output)
  /// [stateTime] Batch state details, such as a failure description if the state is FAILED.
  /// [uuid] A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  const BatchState({
    this.batchId,
    this.createTime,
    this.creator,
    this.deletionPolicy,
    this.effectiveLabels,
    this.environmentConfig,
    this.labels,
    this.location,
    this.name,
    this.operation,
    this.project,
    this.pulumiLabels,
    this.pysparkBatch,
    this.runtimeConfig,
    this.runtimeInfos,
    this.sparkBatch,
    this.sparkRBatch,
    this.sparkSqlBatch,
    this.state,
    this.stateHistories,
    this.stateMessage,
    this.stateTime,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': ?batchId,
      'createTime': ?createTime,
      'creator': ?creator,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'environmentConfig': ?pulumi.Input.mapOptionalInputValue<BatchEnvironmentConfig, Map<String, dynamic>>(environmentConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'operation': ?operation,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'pysparkBatch': ?pulumi.Input.mapOptionalInputValue<BatchPysparkBatch, Map<String, dynamic>>(pysparkBatch, (value) => value.toMap()),
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<BatchRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'runtimeInfos': ?pulumi.Input.mapOptionalInputValue<List<BatchRuntimeInfo>, List<Map<String, dynamic>>>(runtimeInfos, (value) => pulumi.Input.encodeList<BatchRuntimeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sparkBatch': ?pulumi.Input.mapOptionalInputValue<BatchSparkBatch, Map<String, dynamic>>(sparkBatch, (value) => value.toMap()),
      'sparkRBatch': ?pulumi.Input.mapOptionalInputValue<BatchSparkRBatch, Map<String, dynamic>>(sparkRBatch, (value) => value.toMap()),
      'sparkSqlBatch': ?pulumi.Input.mapOptionalInputValue<BatchSparkSqlBatch, Map<String, dynamic>>(sparkSqlBatch, (value) => value.toMap()),
      'state': ?state,
      'stateHistories': ?pulumi.Input.mapOptionalInputValue<List<BatchStateHistory>, List<Map<String, dynamic>>>(stateHistories, (value) => pulumi.Input.encodeList<BatchStateHistory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stateMessage': ?stateMessage,
      'stateTime': ?stateTime,
      'uuid': ?uuid,
    };
  }

  factory BatchState.fromMap(Map<String, dynamic> map) {
    return BatchState(
      batchId: (() { final guardedValue = map['batchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      environmentConfig: (() { final guardedValue = map['environmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pysparkBatch: (() { final guardedValue = map['pysparkBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchPysparkBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeInfos: (() { final guardedValue = map['runtimeInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BatchRuntimeInfo>(guardedValue, (value) => BatchRuntimeInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sparkBatch: (() { final guardedValue = map['sparkBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchSparkBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkRBatch: (() { final guardedValue = map['sparkRBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchSparkRBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkSqlBatch: (() { final guardedValue = map['sparkSqlBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchSparkSqlBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateHistories: (() { final guardedValue = map['stateHistories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BatchStateHistory>(guardedValue, (value) => BatchStateHistory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
