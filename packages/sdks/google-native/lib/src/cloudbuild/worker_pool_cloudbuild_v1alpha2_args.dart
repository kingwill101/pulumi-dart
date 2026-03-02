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
    this.networkConfig,
    this.project,
    required this.region,
    this.workerConfig,
    required this.workerPoolId,
  });

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
      networkConfig: map['networkConfig'] == null ? null : (NetworkConfigCloudbuildV1alpha2.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      workerConfig: map['workerConfig'] == null ? null : (WorkerConfigCloudbuildV1alpha2.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())).input(),
      workerPoolId: (map['workerPoolId'] as String).input(),
    );
  }
}

