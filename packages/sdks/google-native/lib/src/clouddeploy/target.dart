import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_cluster_response.dart';
import 'cloud_run_location_response.dart';
import 'gke_cluster_response.dart';
import 'multi_target_response.dart';
import 'target_args.dart';

/// Creates a new Target in a given project and location.
class Target extends pulumi.CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final pulumi.Output<Map<String, String>> annotations;
  /// Optional. Information specifying an Anthos Cluster.
  late final pulumi.Output<AnthosClusterResponse> anthosCluster;
  /// Time at which the `Target` was created.
  late final pulumi.Output<String> createTime;
  /// Optional. The deploy parameters to use for this target.
  late final pulumi.Output<Map<String, String>> deployParameters;
  /// Optional. Description of the `Target`. Max length is 255 characters.
  late final pulumi.Output<String> description;
  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  late final pulumi.Output<List<Map<String, dynamic>>> executionConfigs;
  /// Optional. Information specifying a GKE Cluster.
  late final pulumi.Output<GkeClusterResponse> gke;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Optional. Information specifying a multiTarget.
  late final pulumi.Output<MultiTargetResponse> multiTarget;
  /// Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Optional. Whether or not the `Target` requires approval.
  late final pulumi.Output<bool> requireApproval;
  /// Optional. Information specifying a Cloud Run deployment target.
  late final pulumi.Output<CloudRunLocationResponse> run;
  /// Required. ID of the `Target`.
  late final pulumi.Output<String> targetId;
  /// Unique identifier of the `Target`.
  late final pulumi.Output<String> uid;
  /// Most recent time at which the `Target` was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_clouddeploy_v1_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:clouddeploy/v1:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    anthosCluster = registerOutput<AnthosClusterResponse>('anthosCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnthosClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deployParameters = registerOutput<Map<String, String>>('deployParameters');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    executionConfigs = registerOutput<List<Map<String, dynamic>>>('executionConfigs');
    gke = registerOutput<GkeClusterResponse>('gke', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GkeClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    multiTarget = registerOutput<MultiTargetResponse>('multiTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    requireApproval = registerOutput<bool>('requireApproval');
    run = registerOutput<CloudRunLocationResponse>('run', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudRunLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
