// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_control_plane.dart';
import 'lke_cluster_pool.dart';

/// Input properties used for looking up and filtering LkeCluster resources.
class LkeClusterState {
  /// The endpoints for the Kubernetes API server.
  final pulumi.Input<List<String>>? apiEndpoints;
  /// Enables the App Platform Layer
  final pulumi.Input<bool>? aplEnabled;
  /// Defines settings for the Kubernetes Control Plane.
  final pulumi.Input<LkeClusterControlPlane>? controlPlane;
  /// The Kubernetes Dashboard access URL for this cluster. LKE Enterprise does not have a dashboard URL.
  final pulumi.Input<String>? dashboardUrl;
  /// A set of node pool tags to ignore when planning and applying this cluster. This prevents externally managed node pools from being deleted or unintentionally updated on subsequent applies. See Externally Managed Node Pools for more details.
  final pulumi.Input<List<String>>? externalPoolTags;
  /// The desired Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.21`), and the latest supported patch version will be deployed.
  final pulumi.Input<String>? k8sVersion;
  /// The base64 encoded kubeconfig for the Kubernetes cluster.
  final pulumi.Input<String>? kubeconfig;
  /// This Kubernetes cluster's unique label.
  final pulumi.Input<String>? label;
  /// Additional nested attributes:
  final pulumi.Input<List<LkeClusterPool>>? pools;
  /// This Kubernetes cluster's location.
  ///
  /// * `pool` - (Required) The Node Pool specifications for the Kubernetes cluster. At least one Node Pool is required.
  ///
  /// * `control_plane` (Optional) Defines settings for the Kubernetes Control Plane.
  final pulumi.Input<String>? region;
  /// The networking stack type of the Kubernetes cluster.
  final pulumi.Input<String>? stackType;
  /// The status of the node. (`ready`, `not_ready`)
  final pulumi.Input<String>? status;
  /// The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled). **NOTE: This field may not be available for all users and is only accepted and populated when api_version is set to `v4beta`.**
  final pulumi.Input<int>? subnetId;
  /// An array of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  final pulumi.Input<String>? tier;
  /// The ID of the VPC to use for the Kubernetes cluster.
  final pulumi.Input<int>? vpcId;

  /// Creates a new [LkeClusterState].
  /// [apiEndpoints] The endpoints for the Kubernetes API server.
  /// [aplEnabled] Enables the App Platform Layer
  /// [controlPlane] Defines settings for the Kubernetes Control Plane.
  /// [dashboardUrl] The Kubernetes Dashboard access URL for this cluster. LKE Enterprise does not have a dashboard URL.
  /// [externalPoolTags] A set of node pool tags to ignore when planning and applying this cluster. This prevents externally managed node pools from being deleted or unintentionally updated on subsequent applies. See Externally Managed Node Pools for more details.
  /// [k8sVersion] The desired Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.21`), and the latest supported patch version will be deployed.
  /// [kubeconfig] The base64 encoded kubeconfig for the Kubernetes cluster.
  /// [label] This Kubernetes cluster's unique label.
  /// [pools] Additional nested attributes:
  /// [region] This Kubernetes cluster's location.
  /// [stackType] The networking stack type of the Kubernetes cluster.
  /// [status] The status of the node. (`ready`, `not_ready`)
  /// [subnetId] The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled). **NOTE: This field may not be available for all users and is only accepted and populated when api_version is set to `v4beta`.**
  /// [tags] An array of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  /// [tier] The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  /// [vpcId] The ID of the VPC to use for the Kubernetes cluster.
  LkeClusterState({
    pulumi.Output<List<String>>? apiEndpoints,
    pulumi.Output<bool>? aplEnabled,
    pulumi.Output<LkeClusterControlPlane>? controlPlane,
    pulumi.Output<String>? dashboardUrl,
    pulumi.Output<List<String>>? externalPoolTags,
    pulumi.Output<String>? k8sVersion,
    pulumi.Output<String>? kubeconfig,
    pulumi.Output<String>? label,
    pulumi.Output<List<LkeClusterPool>>? pools,
    pulumi.Output<String>? region,
    pulumi.Output<String>? stackType,
    pulumi.Output<String>? status,
    pulumi.Output<int>? subnetId,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tier,
    pulumi.Output<int>? vpcId,
  }) :
      apiEndpoints = pulumi.Input.asOptionalInput<List<String>>(apiEndpoints),
      aplEnabled = pulumi.Input.asOptionalInput<bool>(aplEnabled),
      controlPlane = pulumi.Input.asOptionalInput<LkeClusterControlPlane>(controlPlane),
      dashboardUrl = pulumi.Input.asOptionalInput<String>(dashboardUrl),
      externalPoolTags = pulumi.Input.asOptionalInput<List<String>>(externalPoolTags),
      k8sVersion = pulumi.Input.asOptionalInput<String>(k8sVersion),
      kubeconfig = pulumi.Input.asOptionalInput<String>(kubeconfig),
      label = pulumi.Input.asOptionalInput<String>(label),
      pools = pulumi.Input.asOptionalInput<List<LkeClusterPool>>(pools),
      region = pulumi.Input.asOptionalInput<String>(region),
      stackType = pulumi.Input.asOptionalInput<String>(stackType),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetId = pulumi.Input.asOptionalInput<int>(subnetId),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      vpcId = pulumi.Input.asOptionalInput<int>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoints': ?apiEndpoints,
      'aplEnabled': ?aplEnabled,
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<LkeClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'dashboardUrl': ?dashboardUrl,
      'externalPoolTags': ?externalPoolTags,
      'k8sVersion': ?k8sVersion,
      'kubeconfig': ?kubeconfig,
      'label': ?label,
      'pools': ?pulumi.Input.mapOptionalInputValue<List<LkeClusterPool>, List<Map<String, dynamic>>>(pools, (value) => pulumi.Input.encodeList<LkeClusterPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'stackType': ?stackType,
      'status': ?status,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tier': ?tier,
      'vpcId': ?vpcId,
    };
  }

  factory LkeClusterState.fromMap(Map<String, dynamic> map) {
    return LkeClusterState(
      apiEndpoints: map['apiEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['apiEndpoints'] as List).cast<String>()),
      aplEnabled: map['aplEnabled'] == null ? null : pulumi.Output.create<bool>(map['aplEnabled'] as bool),
      controlPlane: map['controlPlane'] == null ? null : pulumi.Output.create<LkeClusterControlPlane>(LkeClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      dashboardUrl: map['dashboardUrl'] == null ? null : pulumi.Output.create<String>(map['dashboardUrl'] as String),
      externalPoolTags: map['externalPoolTags'] == null ? null : pulumi.Output.create<List<String>>((map['externalPoolTags'] as List).cast<String>()),
      k8sVersion: map['k8sVersion'] == null ? null : pulumi.Output.create<String>(map['k8sVersion'] as String),
      kubeconfig: map['kubeconfig'] == null ? null : pulumi.Output.create<String>(map['kubeconfig'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      pools: map['pools'] == null ? null : pulumi.Output.create<List<LkeClusterPool>>(pulumi.Input.decodeList<LkeClusterPool>(map['pools'], (value) => LkeClusterPool.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      stackType: map['stackType'] == null ? null : pulumi.Output.create<String>(map['stackType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<int>(map['subnetId'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<int>(map['vpcId'] as int),
    );
  }
}

