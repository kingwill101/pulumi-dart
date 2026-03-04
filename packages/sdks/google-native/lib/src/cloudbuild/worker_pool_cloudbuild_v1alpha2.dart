import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_response_cloudbuild_v1alpha2.dart';
import 'worker_config_response_cloudbuild_v1alpha2.dart';
import 'worker_pool_cloudbuild_v1alpha2_args.dart';

/// Creates a `WorkerPool` to run the builds, and returns the new worker pool.
/// Auto-naming is currently not supported for this resource.
class WorkerPoolCloudbuildV1alpha2 extends pulumi.CustomResource {
  /// Time at which the request to create the `WorkerPool` was received.
  late final pulumi.Output<String> createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  late final pulumi.Output<String> deleteTime;

  /// The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  late final pulumi.Output<String> name;

  /// Network configuration for the `WorkerPool`.
  late final pulumi.Output<NetworkConfigResponseCloudbuildV1alpha2>
  networkConfig;
  late final pulumi.Output<String> project;

  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  late final pulumi.Output<String> region;

  /// WorkerPool state.
  late final pulumi.Output<String> state;

  /// Time at which the request to update the `WorkerPool` was received.
  late final pulumi.Output<String> updateTime;

  /// Worker configuration for the `WorkerPool`.
  late final pulumi.Output<WorkerConfigResponseCloudbuildV1alpha2> workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String> workerPoolId;

  /// Creates a new [WorkerPoolCloudbuildV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPoolCloudbuildV1alpha2]. {@macro pulumi_cloudbuild_v1alpha2_worker_pool_cloudbuild_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPoolCloudbuildV1alpha2(
    String name, {
    WorkerPoolCloudbuildV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudbuild/v1alpha2:WorkerPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<NetworkConfigResponseCloudbuildV1alpha2>(
      'networkConfig',
    );
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    workerConfig = registerOutput<WorkerConfigResponseCloudbuildV1alpha2>(
      'workerConfig',
    );
    workerPoolId = registerOutput<String>('workerPoolId');
  }
}
