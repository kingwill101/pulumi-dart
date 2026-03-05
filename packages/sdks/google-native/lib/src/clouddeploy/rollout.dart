import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_response.dart';
import 'rollout_args.dart';

/// Creates a new Rollout in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Rollout extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Approval state of the `Rollout`.
  late final pulumi.Output<String> approvalState;

  /// Time at which the `Rollout` was approved.
  late final pulumi.Output<String> approveTime;

  /// Name of the `ControllerRollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  late final pulumi.Output<String> controllerRollout;

  /// Time at which the `Rollout` was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> deliveryPipelineId;

  /// Time at which the `Rollout` finished deploying.
  late final pulumi.Output<String> deployEndTime;

  /// The reason this rollout failed. This will always be unspecified while the rollout is in progress.
  late final pulumi.Output<String> deployFailureCause;

  /// Time at which the `Rollout` started deploying.
  late final pulumi.Output<String> deployStartTime;

  /// The resource name of the Cloud Build `Build` object that is used to deploy the Rollout. Format is `projects/{project}/locations/{location}/builds/{build}`.
  late final pulumi.Output<String> deployingBuild;

  /// Description of the `Rollout` for user purposes. Max length is 255 characters.
  late final pulumi.Output<String> description;

  /// Time at which the `Rollout` was enqueued.
  late final pulumi.Output<String> enqueueTime;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Additional information about the rollout failure, if available.
  late final pulumi.Output<String> failureReason;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Metadata contains information about the rollout.
  late final pulumi.Output<MetadataResponse> metadata;

  /// Optional. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  late final pulumi.Output<String> name;

  /// The phases that represent the workflows of this `Rollout`.
  late final pulumi.Output<List<Map<String, dynamic>>> phases;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> releaseId;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Name of the `Rollout` that is rolled back by this `Rollout`. Empty if this `Rollout` wasn't created as a rollback.
  late final pulumi.Output<String> rollbackOfRollout;

  /// Names of `Rollouts` that rolled back this `Rollout`.
  late final pulumi.Output<List<String>> rolledBackByRollouts;

  /// Required. ID of the `Rollout`.
  late final pulumi.Output<String> rolloutId;

  /// Optional. The starting phase ID for the `Rollout`. If empty the `Rollout` will start at the first phase.
  late final pulumi.Output<String?> startingPhaseId;

  /// Current state of the `Rollout`.
  late final pulumi.Output<String> state;

  /// The ID of Target to which this `Rollout` is deploying.
  late final pulumi.Output<String> targetId;

  /// Unique identifier of the `Rollout`.
  late final pulumi.Output<String> uid;

  /// Creates a new [Rollout].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rollout]. {@macro pulumi_clouddeploy_v1_rollout_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rollout(
    String name, {
    RolloutArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:clouddeploy/v1:Rollout',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    approvalState = registerOutput<String>('approvalState');
    approveTime = registerOutput<String>('approveTime');
    controllerRollout = registerOutput<String>('controllerRollout');
    createTime = registerOutput<String>('createTime');
    deliveryPipelineId = registerOutput<String>('deliveryPipelineId');
    deployEndTime = registerOutput<String>('deployEndTime');
    deployFailureCause = registerOutput<String>('deployFailureCause');
    deployStartTime = registerOutput<String>('deployStartTime');
    deployingBuild = registerOutput<String>('deployingBuild');
    description = registerOutput<String>('description');
    enqueueTime = registerOutput<String>('enqueueTime');
    etag = registerOutput<String>('etag');
    failureReason = registerOutput<String>('failureReason');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<MetadataResponse>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    phases = registerOutput<List<Map<String, dynamic>>>('phases');
    project = registerOutput<String>('project');
    releaseId = registerOutput<String>('releaseId');
    requestId = registerOutput<String?>('requestId');
    rollbackOfRollout = registerOutput<String>('rollbackOfRollout');
    rolledBackByRollouts = registerOutput<List<String>>('rolledBackByRollouts');
    rolloutId = registerOutput<String>('rolloutId');
    startingPhaseId = registerOutput<String?>('startingPhaseId');
    state = registerOutput<String>('state');
    targetId = registerOutput<String>('targetId');
    uid = registerOutput<String>('uid');
  }
}
