// ignore_for_file: unused_element, unnecessary_cast

import 'private_pool_v1_config_response.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String> annotations;
  /// Time at which the request to create the `WorkerPool` was received.
  final String createTime;
  /// Time at which the request to delete the `WorkerPool` was received.
  final String deleteTime;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final String displayName;
  /// Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  final String etag;
  /// The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  final String name;
  /// Legacy Private Pool configuration.
  final PrivatePoolV1ConfigResponse privatePoolV1Config;
  /// `WorkerPool` state.
  final String state;
  /// A unique identifier for the `WorkerPool`.
  final String uid;
  /// Time at which the request to update the `WorkerPool` was received.
  final String updateTime;

  /// Creates a new [GetWorkerPoolResult].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [createTime] Time at which the request to create the `WorkerPool` was received.
  /// [deleteTime] Time at which the request to delete the `WorkerPool` was received.
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [etag] Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  /// [name] The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  /// [privatePoolV1Config] Legacy Private Pool configuration.
  /// [state] `WorkerPool` state.
  /// [uid] A unique identifier for the `WorkerPool`.
  /// [updateTime] Time at which the request to update the `WorkerPool` was received.
  GetWorkerPoolResult({
    required this.annotations,
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.privatePoolV1Config,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'name': name,
      'privatePoolV1Config': privatePoolV1Config.toMap(),
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetWorkerPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      privatePoolV1Config: PrivatePoolV1ConfigResponse.fromMap((map['privatePoolV1Config']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

