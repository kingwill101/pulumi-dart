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
  final pulumi.Input<String>? batchId;
  /// The time when the batch was created.
  final pulumi.Input<String>? createTime;
  /// The email address of the user who created the batch.
  final pulumi.Input<String>? creator;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Environment configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfig>? environmentConfig;
  /// The labels to associate with this batch.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location in which the batch will be created in.
  final pulumi.Input<String>? location;
  /// The resource name of the batch.
  final pulumi.Input<String>? name;
  /// The resource name of the operation associated with this batch.
  final pulumi.Input<String>? operation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// PySpark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchPysparkBatch>? pysparkBatch;
  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchRuntimeConfig>? runtimeConfig;
  /// Runtime information about batch execution.
  /// Structure is documented below.
  final pulumi.Input<List<BatchRuntimeInfo>>? runtimeInfos;
  /// Spark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkBatch>? sparkBatch;
  /// SparkR batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkRBatch>? sparkRBatch;
  /// Spark SQL batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkSqlBatch>? sparkSqlBatch;
  /// (Output)
  /// The state of the batch at this point in history. For possible values, see the [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches#State).
  final pulumi.Input<String>? state;
  /// Historical state information for the batch.
  /// Structure is documented below.
  final pulumi.Input<List<BatchStateHistory>>? stateHistories;
  /// (Output)
  /// Details about the state at this point in history.
  final pulumi.Input<String>? stateMessage;
  /// Batch state details, such as a failure description if the state is FAILED.
  final pulumi.Input<String>? stateTime;
  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  final pulumi.Input<String>? uuid;

  /// Creates a new [BatchState].
  /// [batchId] The ID to use for the batch, which will become the final component of the batch's resource name.
  /// [createTime] The time when the batch was created.
  /// [creator] The email address of the user who created the batch.
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
  BatchState({
    pulumi.Output<String>? batchId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creator,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<BatchEnvironmentConfig>? environmentConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? operation,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<BatchPysparkBatch>? pysparkBatch,
    pulumi.Output<BatchRuntimeConfig>? runtimeConfig,
    pulumi.Output<List<BatchRuntimeInfo>>? runtimeInfos,
    pulumi.Output<BatchSparkBatch>? sparkBatch,
    pulumi.Output<BatchSparkRBatch>? sparkRBatch,
    pulumi.Output<BatchSparkSqlBatch>? sparkSqlBatch,
    pulumi.Output<String>? state,
    pulumi.Output<List<BatchStateHistory>>? stateHistories,
    pulumi.Output<String>? stateMessage,
    pulumi.Output<String>? stateTime,
    pulumi.Output<String>? uuid,
  }) :
      batchId = pulumi.Input.asOptionalInput<String>(batchId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creator = pulumi.Input.asOptionalInput<String>(creator),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      environmentConfig = pulumi.Input.asOptionalInput<BatchEnvironmentConfig>(environmentConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      operation = pulumi.Input.asOptionalInput<String>(operation),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      pysparkBatch = pulumi.Input.asOptionalInput<BatchPysparkBatch>(pysparkBatch),
      runtimeConfig = pulumi.Input.asOptionalInput<BatchRuntimeConfig>(runtimeConfig),
      runtimeInfos = pulumi.Input.asOptionalInput<List<BatchRuntimeInfo>>(runtimeInfos),
      sparkBatch = pulumi.Input.asOptionalInput<BatchSparkBatch>(sparkBatch),
      sparkRBatch = pulumi.Input.asOptionalInput<BatchSparkRBatch>(sparkRBatch),
      sparkSqlBatch = pulumi.Input.asOptionalInput<BatchSparkSqlBatch>(sparkSqlBatch),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateHistories = pulumi.Input.asOptionalInput<List<BatchStateHistory>>(stateHistories),
      stateMessage = pulumi.Input.asOptionalInput<String>(stateMessage),
      stateTime = pulumi.Input.asOptionalInput<String>(stateTime),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': ?batchId,
      'createTime': ?createTime,
      'creator': ?creator,
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
      batchId: map['batchId'] == null ? null : pulumi.Output.create<String>(map['batchId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<String>(map['creator'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      environmentConfig: map['environmentConfig'] == null ? null : pulumi.Output.create<BatchEnvironmentConfig>(BatchEnvironmentConfig.fromMap((map['environmentConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operation: map['operation'] == null ? null : pulumi.Output.create<String>(map['operation'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      pysparkBatch: map['pysparkBatch'] == null ? null : pulumi.Output.create<BatchPysparkBatch>(BatchPysparkBatch.fromMap((map['pysparkBatch'] as Map).cast<String, dynamic>())),
      runtimeConfig: map['runtimeConfig'] == null ? null : pulumi.Output.create<BatchRuntimeConfig>(BatchRuntimeConfig.fromMap((map['runtimeConfig'] as Map).cast<String, dynamic>())),
      runtimeInfos: map['runtimeInfos'] == null ? null : pulumi.Output.create<List<BatchRuntimeInfo>>(pulumi.Input.decodeList<BatchRuntimeInfo>(map['runtimeInfos'], (value) => BatchRuntimeInfo.fromMap((value as Map).cast<String, dynamic>()))),
      sparkBatch: map['sparkBatch'] == null ? null : pulumi.Output.create<BatchSparkBatch>(BatchSparkBatch.fromMap((map['sparkBatch'] as Map).cast<String, dynamic>())),
      sparkRBatch: map['sparkRBatch'] == null ? null : pulumi.Output.create<BatchSparkRBatch>(BatchSparkRBatch.fromMap((map['sparkRBatch'] as Map).cast<String, dynamic>())),
      sparkSqlBatch: map['sparkSqlBatch'] == null ? null : pulumi.Output.create<BatchSparkSqlBatch>(BatchSparkSqlBatch.fromMap((map['sparkSqlBatch'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateHistories: map['stateHistories'] == null ? null : pulumi.Output.create<List<BatchStateHistory>>(pulumi.Input.decodeList<BatchStateHistory>(map['stateHistories'], (value) => BatchStateHistory.fromMap((value as Map).cast<String, dynamic>()))),
      stateMessage: map['stateMessage'] == null ? null : pulumi.Output.create<String>(map['stateMessage'] as String),
      stateTime: map['stateTime'] == null ? null : pulumi.Output.create<String>(map['stateTime'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

