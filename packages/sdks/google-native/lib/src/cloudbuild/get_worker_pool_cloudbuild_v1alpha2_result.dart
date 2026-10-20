// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_response_cloudbuild_v1alpha2.dart';
import 'worker_config_response_cloudbuild_v1alpha2.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolCloudbuildV1alpha2Result {
  /// Time at which the request to create the `WorkerPool` was received.
  final String? createTime;
  /// Time at which the request to delete the `WorkerPool` was received.
  final String? deleteTime;
  /// The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  final String? name;
  /// Network configuration for the `WorkerPool`.
  final NetworkConfigResponseCloudbuildV1alpha2? networkConfig;
  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  final String? region;
  /// WorkerPool state.
  final String? state;
  /// Time at which the request to update the `WorkerPool` was received.
  final String? updateTime;
  /// Worker configuration for the `WorkerPool`.
  final WorkerConfigResponseCloudbuildV1alpha2? workerConfig;

  /// Creates a new [GetWorkerPoolCloudbuildV1alpha2Result].
  /// [createTime] Time at which the request to create the `WorkerPool` was received.
  /// [deleteTime] Time at which the request to delete the `WorkerPool` was received.
  /// [name] The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  /// [networkConfig] Network configuration for the `WorkerPool`.
  /// [region] Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  /// [state] WorkerPool state.
  /// [updateTime] Time at which the request to update the `WorkerPool` was received.
  /// [workerConfig] Worker configuration for the `WorkerPool`.
  const GetWorkerPoolCloudbuildV1alpha2Result({
    this.createTime,
    this.deleteTime,
    this.name,
    this.networkConfig,
    this.region,
    this.state,
    this.updateTime,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'name': ?name,
      'networkConfig': ?networkConfig?.toMap(),
      'region': ?region,
      'state': ?state,
      'updateTime': ?updateTime,
      'workerConfig': ?workerConfig?.toMap(),
    };
  }

  factory GetWorkerPoolCloudbuildV1alpha2Result.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolCloudbuildV1alpha2Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponseCloudbuildV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return WorkerConfigResponseCloudbuildV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
