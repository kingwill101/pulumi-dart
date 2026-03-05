import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_response_cloudbuild_v1beta1.dart';
import 'worker_config_response_cloudbuild_v1beta1.dart';
import 'worker_pool_cloudbuild_v1beta1_args.dart';

/// Creates a `WorkerPool` to run the builds, and returns the new worker pool. NOTE: As of now, this method returns an `Operation` that is always complete.
/// Auto-naming is currently not supported for this resource.
class WorkerPoolCloudbuildV1beta1 extends pulumi.CustomResource {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final pulumi.Output<Map<String, String>> annotations;
  /// Time at which the request to create the `WorkerPool` was received.
  late final pulumi.Output<String> createTime;
  /// Time at which the request to delete the `WorkerPool` was received.
  late final pulumi.Output<String> deleteTime;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  late final pulumi.Output<String> displayName;
  /// Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  /// The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  late final pulumi.Output<String> name;
  /// Network configuration for the `WorkerPool`.
  late final pulumi.Output<NetworkConfigResponseCloudbuildV1beta1> networkConfig;
  late final pulumi.Output<String> project;
  /// `WorkerPool` state.
  late final pulumi.Output<String> state;
  /// A unique identifier for the `WorkerPool`.
  late final pulumi.Output<String> uid;
  /// Time at which the request to update the `WorkerPool` was received.
  late final pulumi.Output<String> updateTime;
  /// Worker configuration for the `WorkerPool`.
  late final pulumi.Output<WorkerConfigResponseCloudbuildV1beta1> workerConfig;
  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String> workerPoolId;

  /// Creates a new [WorkerPoolCloudbuildV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPoolCloudbuildV1beta1]. {@macro pulumi_cloudbuild_v1beta1_worker_pool_cloudbuild_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPoolCloudbuildV1beta1(
    String name, {
    WorkerPoolCloudbuildV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1beta1:WorkerPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<NetworkConfigResponseCloudbuildV1beta1>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkConfigResponseCloudbuildV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workerConfig = registerOutput<WorkerConfigResponseCloudbuildV1beta1>('workerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerConfigResponseCloudbuildV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workerPoolId = registerOutput<String>('workerPoolId');
  }
}
