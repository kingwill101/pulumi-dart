import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_config_response_cloudbuild_v1alpha1.dart';
import 'worker_pool_cloudbuild_v1alpha1_args.dart';

/// Creates a `WorkerPool` to run the builds, and returns the new worker pool.
class WorkerPoolCloudbuildV1alpha1 extends pulumi.CustomResource {
  /// Time at which the request to create the `WorkerPool` was received.
  late final pulumi.Output<String> createTime;
  /// Time at which the request to delete the `WorkerPool` was received.
  late final pulumi.Output<String> deleteTime;
  /// User-defined name of the `WorkerPool`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  late final pulumi.Output<List<String>> regions;
  /// The service account used to manage the `WorkerPool`. The service account must have the Compute Instance Admin (Beta) permission at the project level.
  late final pulumi.Output<String> serviceAccountEmail;
  /// WorkerPool Status.
  late final pulumi.Output<String> status;
  /// Time at which the request to update the `WorkerPool` was received.
  late final pulumi.Output<String> updateTime;
  /// Configuration to be used for a creating workers in the `WorkerPool`.
  late final pulumi.Output<WorkerConfigResponseCloudbuildV1alpha1> workerConfig;
  /// Total number of workers to be created across all requested regions.
  late final pulumi.Output<String> workerCount;

  /// Creates a new [WorkerPoolCloudbuildV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPoolCloudbuildV1alpha1]. {@macro pulumi_cloudbuild_v1alpha1_worker_pool_cloudbuild_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPoolCloudbuildV1alpha1(
    String name, {
    WorkerPoolCloudbuildV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1alpha1:WorkerPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    regions = registerOutput<List<String>>('regions');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    status = registerOutput<String>('status');
    updateTime = registerOutput<String>('updateTime');
    workerConfig = registerOutput<WorkerConfigResponseCloudbuildV1alpha1>('workerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerConfigResponseCloudbuildV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workerCount = registerOutput<String>('workerCount');
  }
}
