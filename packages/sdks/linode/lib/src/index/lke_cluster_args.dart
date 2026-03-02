// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_control_plane.dart';
import 'lke_cluster_pool.dart';

/// {@template pulumi_index_lke_cluster_lke_cluster_args_doc}
/// The set of arguments for LkeCluster.
/// {@endtemplate}
/// {@macro pulumi_index_lke_cluster_lke_cluster_args_doc}
class LkeClusterArgs {
  /// Enables the App Platform Layer
  final pulumi.Input<bool>? aplEnabled;
  /// Defines settings for the Kubernetes Control Plane.
  final pulumi.Input<LkeClusterControlPlane>? controlPlane;
  /// A set of node pool tags to ignore when planning and applying this cluster. This prevents externally managed node pools from being deleted or unintentionally updated on subsequent applies. See Externally Managed Node Pools for more details.
  final pulumi.Input<List<String>>? externalPoolTags;
  /// The desired Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.21`), and the latest supported patch version will be deployed.
  final pulumi.Input<String> k8sVersion;
  /// This Kubernetes cluster's unique label.
  final pulumi.Input<String> label;
  /// Additional nested attributes:
  final pulumi.Input<List<LkeClusterPool>> pools;
  /// This Kubernetes cluster's location.
  ///
  /// * `pool` - (Required) The Node Pool specifications for the Kubernetes cluster. At least one Node Pool is required.
  ///
  /// * `control_plane` (Optional) Defines settings for the Kubernetes Control Plane.
  final pulumi.Input<String> region;
  /// The networking stack type of the Kubernetes cluster.
  final pulumi.Input<String>? stackType;
  /// The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled). **NOTE: This field may not be available for all users and is only accepted and populated when api_version is set to `v4beta`.**
  final pulumi.Input<int>? subnetId;
  /// An array of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  final pulumi.Input<String>? tier;
  /// The ID of the VPC to use for the Kubernetes cluster.
  final pulumi.Input<int>? vpcId;

  /// Creates a new [LkeClusterArgs].
  /// [aplEnabled] Enables the App Platform Layer
  /// [controlPlane] Defines settings for the Kubernetes Control Plane.
  /// [externalPoolTags] A set of node pool tags to ignore when planning and applying this cluster. This prevents externally managed node pools from being deleted or unintentionally updated on subsequent applies. See Externally Managed Node Pools for more details.
  /// [k8sVersion] The desired Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.21`), and the latest supported patch version will be deployed.
  /// [label] This Kubernetes cluster's unique label.
  /// [pools] Additional nested attributes:
  /// [region] This Kubernetes cluster's location.
  /// [stackType] The networking stack type of the Kubernetes cluster.
  /// [subnetId] The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled). **NOTE: This field may not be available for all users and is only accepted and populated when api_version is set to `v4beta`.**
  /// [tags] An array of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  /// [tier] The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  /// [vpcId] The ID of the VPC to use for the Kubernetes cluster.
  LkeClusterArgs({
    this.aplEnabled,
    this.controlPlane,
    this.externalPoolTags,
    required this.k8sVersion,
    required this.label,
    required this.pools,
    required this.region,
    this.stackType,
    this.subnetId,
    this.tags,
    this.tier,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aplEnabled': ?aplEnabled,
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<LkeClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'externalPoolTags': ?externalPoolTags,
      'k8sVersion': k8sVersion,
      'label': label,
      'pools': pulumi.Input.mapInputValue<List<LkeClusterPool>, List<Map<String, dynamic>>>(pools, (value) => pulumi.Input.encodeList<LkeClusterPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': region,
      'stackType': ?stackType,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tier': ?tier,
      'vpcId': ?vpcId,
    };
  }

  factory LkeClusterArgs.fromMap(Map<String, dynamic> map) {
    return LkeClusterArgs(
      aplEnabled: map['aplEnabled'] == null ? null : (map['aplEnabled']! as bool).input(),
      controlPlane: map['controlPlane'] == null ? null : (LkeClusterControlPlane.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())).input(),
      externalPoolTags: map['externalPoolTags'] == null ? null : ((map['externalPoolTags']! as List).cast<String>()).input(),
      k8sVersion: (map['k8sVersion'] as String).input(),
      label: (map['label'] as String).input(),
      pools: (pulumi.Input.decodeList<LkeClusterPool>(map['pools'], (value) => LkeClusterPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: (map['region'] as String).input(),
      stackType: map['stackType'] == null ? null : (map['stackType']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as int).input(),
    );
  }
}

