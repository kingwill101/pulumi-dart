// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_cloudbuild_v1alpha2.dart';
import 'worker_config_cloudbuild_v1alpha2.dart';

/// {@template pulumi_cloudbuild_v1alpha2_worker_pool_cloudbuild_v1alpha2_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1alpha2_worker_pool_cloudbuild_v1alpha2_args_doc}
class WorkerPoolCloudbuildV1alpha2Args {
  /// Network configuration for the `WorkerPool`.
  final pulumi.Input<NetworkConfigCloudbuildV1alpha2>? networkConfig;
  final pulumi.Input<String>? project;
  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  final pulumi.Input<String> region;
  /// Worker configuration for the `WorkerPool`.
  final pulumi.Input<WorkerConfigCloudbuildV1alpha2>? workerConfig;
  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [WorkerPoolCloudbuildV1alpha2Args].
  /// [networkConfig] Network configuration for the `WorkerPool`.
  /// [project] Optional.
  /// [region] Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  /// [workerConfig] Worker configuration for the `WorkerPool`.
  /// [workerPoolId] Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  WorkerPoolCloudbuildV1alpha2Args({
    pulumi.Output<NetworkConfigCloudbuildV1alpha2>? networkConfig,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    pulumi.Output<WorkerConfigCloudbuildV1alpha2>? workerConfig,
    required pulumi.Output<String> workerPoolId,
  }) :
      networkConfig = pulumi.Input.asOptionalInput<NetworkConfigCloudbuildV1alpha2>(networkConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      workerConfig = pulumi.Input.asOptionalInput<WorkerConfigCloudbuildV1alpha2>(workerConfig),
      workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigCloudbuildV1alpha2, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'region': region,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkerConfigCloudbuildV1alpha2, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
      'workerPoolId': workerPoolId,
    };
  }

  factory WorkerPoolCloudbuildV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCloudbuildV1alpha2Args(
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<NetworkConfigCloudbuildV1alpha2>(NetworkConfigCloudbuildV1alpha2.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      workerConfig: map['workerConfig'] == null ? null : pulumi.Output.create<WorkerConfigCloudbuildV1alpha2>(WorkerConfigCloudbuildV1alpha2.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())),
      workerPoolId: pulumi.Output.create<String>(map['workerPoolId'] as String),
    );
  }
}

