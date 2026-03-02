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
    this.apiEndpoints,
    this.aplEnabled,
    this.controlPlane,
    this.dashboardUrl,
    this.externalPoolTags,
    this.k8sVersion,
    this.kubeconfig,
    this.label,
    this.pools,
    this.region,
    this.stackType,
    this.status,
    this.subnetId,
    this.tags,
    this.tier,
    this.vpcId,
  });

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
      apiEndpoints: map['apiEndpoints'] == null ? null : ((map['apiEndpoints'] as List).cast<String>()).input(),
      aplEnabled: map['aplEnabled'] == null ? null : (map['aplEnabled'] as bool).input(),
      controlPlane: map['controlPlane'] == null ? null : (LkeClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      dashboardUrl: map['dashboardUrl'] == null ? null : (map['dashboardUrl'] as String).input(),
      externalPoolTags: map['externalPoolTags'] == null ? null : ((map['externalPoolTags'] as List).cast<String>()).input(),
      k8sVersion: map['k8sVersion'] == null ? null : (map['k8sVersion'] as String).input(),
      kubeconfig: map['kubeconfig'] == null ? null : (map['kubeconfig'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      pools: map['pools'] == null ? null : (pulumi.Input.decodeList<LkeClusterPool>(map['pools'], (value) => LkeClusterPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      stackType: map['stackType'] == null ? null : (map['stackType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as int).input(),
    );
  }
}

