import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_artifact_response.dart';
import 'delivery_pipeline_response.dart';
import 'release_args.dart';
import 'release_condition_response.dart';
import 'target_response.dart';

/// Creates a new Release in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Release extends pulumi.CustomResource {
  /// Indicates whether this is an abandoned release.
  late final pulumi.Output<bool> abandoned;
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final pulumi.Output<Map<String, String>> annotations;
  /// List of artifacts to pass through to Skaffold command.
  late final pulumi.Output<List<BuildArtifactResponse>> buildArtifacts;
  /// Information around the state of the Release.
  late final pulumi.Output<ReleaseConditionResponse> condition;
  /// Time at which the `Release` was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> deliveryPipelineId;
  /// Snapshot of the parent pipeline taken at release creation time.
  late final pulumi.Output<DeliveryPipelineResponse> deliveryPipelineSnapshot;
  /// Optional. The deploy parameters to use for all targets in this release.
  late final pulumi.Output<Map<String, String>> deployParameters;
  /// Description of the `Release`. Max length is 255 characters.
  late final pulumi.Output<String> description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Optional. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Required. ID of the `Release`.
  late final pulumi.Output<String> releaseId;
  /// Time at which the render completed.
  late final pulumi.Output<String> renderEndTime;
  /// Time at which the render began.
  late final pulumi.Output<String> renderStartTime;
  /// Current state of the render operation.
  late final pulumi.Output<String> renderState;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Filepath of the Skaffold config inside of the config URI.
  late final pulumi.Output<String> skaffoldConfigPath;
  /// Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  late final pulumi.Output<String> skaffoldConfigUri;
  /// The Skaffold version to use when operating on this release, such as "1.20.0". Not all versions are valid; Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.
  late final pulumi.Output<String> skaffoldVersion;
  /// Map from target ID to the target artifacts created during the render operation.
  late final pulumi.Output<Map<String, String>> targetArtifacts;
  /// Map from target ID to details of the render operation for that target.
  late final pulumi.Output<Map<String, String>> targetRenders;
  /// Snapshot of the targets taken at release creation time.
  late final pulumi.Output<List<TargetResponse>> targetSnapshots;
  /// Unique identifier of the `Release`.
  late final pulumi.Output<String> uid;

  /// Creates a new [Release].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Release]. {@macro pulumi_clouddeploy_v1_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Release(
    String name, {
    ReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:clouddeploy/v1:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abandoned = registerOutput<bool>('abandoned');
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.buildArtifacts = registerOutput<List<BuildArtifactResponse>>('buildArtifacts');
    this.condition = registerOutput<ReleaseConditionResponse>('condition');
    this.createTime = registerOutput<String>('createTime');
    this.deliveryPipelineId = registerOutput<String>('deliveryPipelineId');
    this.deliveryPipelineSnapshot = registerOutput<DeliveryPipelineResponse>('deliveryPipelineSnapshot');
    this.deployParameters = registerOutput<Map<String, String>>('deployParameters');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.releaseId = registerOutput<String>('releaseId');
    this.renderEndTime = registerOutput<String>('renderEndTime');
    this.renderStartTime = registerOutput<String>('renderStartTime');
    this.renderState = registerOutput<String>('renderState');
    this.requestId = registerOutput<String?>('requestId');
    this.skaffoldConfigPath = registerOutput<String>('skaffoldConfigPath');
    this.skaffoldConfigUri = registerOutput<String>('skaffoldConfigUri');
    this.skaffoldVersion = registerOutput<String>('skaffoldVersion');
    this.targetArtifacts = registerOutput<Map<String, String>>('targetArtifacts');
    this.targetRenders = registerOutput<Map<String, String>>('targetRenders');
    this.targetSnapshots = registerOutput<List<TargetResponse>>('targetSnapshots');
    this.uid = registerOutput<String>('uid');
  }
}
