// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_response_cloudbuild_v1beta1.dart';
import 'worker_config_response_cloudbuild_v1beta1.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolCloudbuildV1beta1Result {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String>? annotations;
  /// Time at which the request to create the `WorkerPool` was received.
  final String? createTime;
  /// Time at which the request to delete the `WorkerPool` was received.
  final String? deleteTime;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final String? displayName;
  /// Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  final String? etag;
  /// The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  final String? name;
  /// Network configuration for the `WorkerPool`.
  final NetworkConfigResponseCloudbuildV1beta1? networkConfig;
  /// `WorkerPool` state.
  final String? state;
  /// A unique identifier for the `WorkerPool`.
  final String? uid;
  /// Time at which the request to update the `WorkerPool` was received.
  final String? updateTime;
  /// Worker configuration for the `WorkerPool`.
  final WorkerConfigResponseCloudbuildV1beta1? workerConfig;

  /// Creates a new [GetWorkerPoolCloudbuildV1beta1Result].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [createTime] Time at which the request to create the `WorkerPool` was received.
  /// [deleteTime] Time at which the request to delete the `WorkerPool` was received.
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [etag] Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  /// [name] The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  /// [networkConfig] Network configuration for the `WorkerPool`.
  /// [state] `WorkerPool` state.
  /// [uid] A unique identifier for the `WorkerPool`.
  /// [updateTime] Time at which the request to update the `WorkerPool` was received.
  /// [workerConfig] Worker configuration for the `WorkerPool`.
  const GetWorkerPoolCloudbuildV1beta1Result({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.name,
    this.networkConfig,
    this.state,
    this.uid,
    this.updateTime,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'networkConfig': ?networkConfig?.toMap(),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workerConfig': ?workerConfig?.toMap(),
    };
  }

  factory GetWorkerPoolCloudbuildV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolCloudbuildV1beta1Result(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponseCloudbuildV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return WorkerConfigResponseCloudbuildV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
