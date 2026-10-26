// ignore_for_file: unused_element, unnecessary_cast

import 'worker_config_response_cloudbuild_v1alpha1.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolCloudbuildV1alpha1Result {
  /// Time at which the request to create the `WorkerPool` was received.
  final String? createTime;
  /// Time at which the request to delete the `WorkerPool` was received.
  final String? deleteTime;
  /// User-defined name of the `WorkerPool`.
  final String? name;
  /// The project ID of the GCP project for which the `WorkerPool` is created.
  final String? project;
  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  final List<String>? regions;
  /// The service account used to manage the `WorkerPool`. The service account must have the Compute Instance Admin (Beta) permission at the project level.
  final String? serviceAccountEmail;
  /// WorkerPool Status.
  final String? status;
  /// Time at which the request to update the `WorkerPool` was received.
  final String? updateTime;
  /// Configuration to be used for a creating workers in the `WorkerPool`.
  final WorkerConfigResponseCloudbuildV1alpha1? workerConfig;
  /// Total number of workers to be created across all requested regions.
  final String? workerCount;

  /// Creates a new [GetWorkerPoolCloudbuildV1alpha1Result].
  /// [createTime] Time at which the request to create the `WorkerPool` was received.
  /// [deleteTime] Time at which the request to delete the `WorkerPool` was received.
  /// [name] User-defined name of the `WorkerPool`.
  /// [project] The project ID of the GCP project for which the `WorkerPool` is created.
  /// [regions] List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  /// [serviceAccountEmail] The service account used to manage the `WorkerPool`. The service account must have the Compute Instance Admin (Beta) permission at the project level.
  /// [status] WorkerPool Status.
  /// [updateTime] Time at which the request to update the `WorkerPool` was received.
  /// [workerConfig] Configuration to be used for a creating workers in the `WorkerPool`.
  /// [workerCount] Total number of workers to be created across all requested regions.
  const GetWorkerPoolCloudbuildV1alpha1Result({
    this.createTime,
    this.deleteTime,
    this.name,
    this.project,
    this.regions,
    this.serviceAccountEmail,
    this.status,
    this.updateTime,
    this.workerConfig,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'name': ?name,
      'project': ?project,
      'regions': ?regions,
      'serviceAccountEmail': ?serviceAccountEmail,
      'status': ?status,
      'updateTime': ?updateTime,
      'workerConfig': ?workerConfig?.toMap(),
      'workerCount': ?workerCount,
    };
  }

  factory GetWorkerPoolCloudbuildV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolCloudbuildV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return WorkerConfigResponseCloudbuildV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
