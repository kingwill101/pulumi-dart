import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cluster_config_response.dart';
import 'workstation_cluster_args.dart';

/// Creates a new workstation cluster.
class WorkstationCluster extends pulumi.CustomResource {
  /// Optional. Client-specified annotations.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Status conditions describing the workstation cluster's current state.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  late final pulumi.Output<String> controlPlaneIp;

  /// Time when this workstation cluster was created.
  late final pulumi.Output<String> createTime;

  /// Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  late final pulumi.Output<bool> degraded;

  /// Time when this workstation cluster was soft-deleted.
  late final pulumi.Output<String> deleteTime;

  /// Optional. Human-readable name for this workstation cluster.
  late final pulumi.Output<String> displayName;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Identifier. Full name of this workstation cluster.
  late final pulumi.Output<String> name;

  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  late final pulumi.Output<String> network;

  /// Optional. Configuration for private workstation cluster.
  late final pulumi.Output<PrivateClusterConfigResponse> privateClusterConfig;
  late final pulumi.Output<String> project;

  /// Indicates whether this workstation cluster is currently being updated to match its intended state.
  late final pulumi.Output<bool> reconciling;

  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  late final pulumi.Output<String> subnetwork;

  /// A system-assigned unique identifier for this workstation cluster.
  late final pulumi.Output<String> uid;

  /// Time when this workstation cluster was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Required. ID to use for the workstation cluster.
  late final pulumi.Output<String> workstationClusterId;

  /// Creates a new [WorkstationCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationCluster]. {@macro pulumi_workstations_v1_workstation_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationCluster(
    String name, {
    WorkstationClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:workstations/v1:WorkstationCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    controlPlaneIp = registerOutput<String>('controlPlaneIp');
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    privateClusterConfig = registerOutput<PrivateClusterConfigResponse>(
      'privateClusterConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateClusterConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    subnetwork = registerOutput<String>('subnetwork');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workstationClusterId = registerOutput<String>('workstationClusterId');
  }
}
