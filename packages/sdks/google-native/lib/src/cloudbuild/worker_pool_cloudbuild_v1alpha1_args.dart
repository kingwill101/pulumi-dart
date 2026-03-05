// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_config_cloudbuild_v1alpha1.dart';
import 'worker_pool_regions_item.dart';

/// {@template pulumi_cloudbuild_v1alpha1_worker_pool_cloudbuild_v1alpha1_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1alpha1_worker_pool_cloudbuild_v1alpha1_args_doc}
class WorkerPoolCloudbuildV1alpha1Args {
  /// User-defined name of the `WorkerPool`.
  final pulumi.Input<String>? name;
  /// The project ID of the GCP project for which the `WorkerPool` is created.
  final pulumi.Input<String>? project;
  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  final pulumi.Input<List<WorkerPoolRegionsItem>>? regions;
  /// Configuration to be used for a creating workers in the `WorkerPool`.
  final pulumi.Input<WorkerConfigCloudbuildV1alpha1>? workerConfig;
  /// Total number of workers to be created across all requested regions.
  final pulumi.Input<String>? workerCount;

  /// Creates a new [WorkerPoolCloudbuildV1alpha1Args].
  /// [name] User-defined name of the `WorkerPool`.
  /// [project] The project ID of the GCP project for which the `WorkerPool` is created.
  /// [regions] List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  /// [workerConfig] Configuration to be used for a creating workers in the `WorkerPool`.
  /// [workerCount] Total number of workers to be created across all requested regions.
  WorkerPoolCloudbuildV1alpha1Args({
    this.name,
    this.project,
    this.regions,
    this.workerConfig,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'regions': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolRegionsItem>, List<String>>(regions, (value) => pulumi.Input.encodeList<WorkerPoolRegionsItem, String>(value, (value) => value.wireValue)),
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkerConfigCloudbuildV1alpha1, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
      'workerCount': ?workerCount,
    };
  }

  factory WorkerPoolCloudbuildV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCloudbuildV1alpha1Args(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerPoolRegionsItem>(guardedValue, (value) => WorkerPoolRegionsItem.fromValue(value as String))); })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerConfigCloudbuildV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

