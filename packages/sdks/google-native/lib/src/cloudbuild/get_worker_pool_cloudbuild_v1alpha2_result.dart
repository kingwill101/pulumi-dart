// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_response_cloudbuild_v1alpha2.dart';
import 'worker_config_response_cloudbuild_v1alpha2.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolCloudbuildV1alpha2Result {
  /// Time at which the request to create the `WorkerPool` was received.
  final String createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  final String deleteTime;

  /// The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  final String name;

  /// Network configuration for the `WorkerPool`.
  final NetworkConfigResponseCloudbuildV1alpha2 networkConfig;

  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  final String region;

  /// WorkerPool state.
  final String state;

  /// Time at which the request to update the `WorkerPool` was received.
  final String updateTime;

  /// Worker configuration for the `WorkerPool`.
  final WorkerConfigResponseCloudbuildV1alpha2 workerConfig;

  /// Creates a new [GetWorkerPoolCloudbuildV1alpha2Result].
  /// [createTime] Time at which the request to create the `WorkerPool` was received.
  /// [deleteTime] Time at which the request to delete the `WorkerPool` was received.
  /// [name] The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  /// [networkConfig] Network configuration for the `WorkerPool`.
  /// [region] Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  /// [state] WorkerPool state.
  /// [updateTime] Time at which the request to update the `WorkerPool` was received.
  /// [workerConfig] Worker configuration for the `WorkerPool`.
  GetWorkerPoolCloudbuildV1alpha2Result({
    required this.createTime,
    required this.deleteTime,
    required this.name,
    required this.networkConfig,
    required this.region,
    required this.state,
    required this.updateTime,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'name': name,
      'networkConfig': networkConfig.toMap(),
      'region': region,
      'state': state,
      'updateTime': updateTime,
      'workerConfig': workerConfig.toMap(),
    };
  }

  factory GetWorkerPoolCloudbuildV1alpha2Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkerPoolCloudbuildV1alpha2Result(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      name: map['name'] as String,
      networkConfig: NetworkConfigResponseCloudbuildV1alpha2.fromMap(
        (map['networkConfig']! as Map).cast<String, dynamic>(),
      ),
      region: map['region'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      workerConfig: WorkerConfigResponseCloudbuildV1alpha2.fromMap(
        (map['workerConfig']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
