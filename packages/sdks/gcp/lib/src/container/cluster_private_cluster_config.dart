// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_private_cluster_config_master_global_access_config.dart';

class ClusterPrivateClusterConfig {
  /// When `true`, the cluster's private
  /// endpoint is used as the cluster endpoint and access through the public endpoint
  /// is disabled. When `false`, either endpoint can be used. This field only applies
  /// to private clusters, when `enable_private_nodes` is `true`.
  final pulumi.Input<bool>? enablePrivateEndpoint;
  /// Enables the private cluster feature,
  /// creating a private endpoint on the cluster. In a private cluster, nodes only
  /// have RFC 1918 private addresses and communicate with the master's private
  /// endpoint via private networking.
  final pulumi.Input<bool>? enablePrivateNodes;
  /// Controls cluster master global
  /// access settings. If unset, the provider will no longer manage this field and will
  /// not modify the previously-set value. Structure is documented below.
  final pulumi.Input<ClusterPrivateClusterConfigMasterGlobalAccessConfig>? masterGlobalAccessConfig;
  /// The IP range in CIDR notation to use for
  /// the hosted master network. This range will be used for assigning private IP
  /// addresses to the cluster master(s) and the ILB VIP. This range must not overlap
  /// with any other ranges in use within the cluster's network, and it must be a /28
  /// subnet. See [Private Cluster Limitations](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters#req_res_lim)
  /// for more details. This field only applies to private clusters, when
  /// `enable_private_nodes` is `true`.
  final pulumi.Input<String>? masterIpv4CidrBlock;
  /// The name of the peering between this cluster and the Google owned VPC.
  final pulumi.Input<String>? peeringName;
  /// The internal IP address of this cluster's master endpoint.
  final pulumi.Input<String>? privateEndpoint;
  /// Subnetwork in cluster's network where master's endpoint will be provisioned.
  final pulumi.Input<String>? privateEndpointSubnetwork;
  /// The external IP address of this cluster's master endpoint.
  ///
  /// !> The Google provider is unable to validate certain configurations of
  /// `private_cluster_config` when `enable_private_nodes` is `false`. It's
  /// recommended that you omit the block entirely if the field is not set to `true`.
  final pulumi.Input<String>? publicEndpoint;

  /// Creates a new [ClusterPrivateClusterConfig].
  /// [enablePrivateEndpoint] When `true`, the cluster's private
  /// [enablePrivateNodes] Enables the private cluster feature,
  /// [masterGlobalAccessConfig] Controls cluster master global
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for
  /// [peeringName] The name of the peering between this cluster and the Google owned VPC.
  /// [privateEndpoint] The internal IP address of this cluster's master endpoint.
  /// [privateEndpointSubnetwork] Subnetwork in cluster's network where master's endpoint will be provisioned.
  /// [publicEndpoint] The external IP address of this cluster's master endpoint.
  ClusterPrivateClusterConfig({
    this.enablePrivateEndpoint,
    this.enablePrivateNodes,
    this.masterGlobalAccessConfig,
    this.masterIpv4CidrBlock,
    this.peeringName,
    this.privateEndpoint,
    this.privateEndpointSubnetwork,
    this.publicEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'enablePrivateNodes': ?enablePrivateNodes,
      'masterGlobalAccessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPrivateClusterConfigMasterGlobalAccessConfig, Map<String, dynamic>>(masterGlobalAccessConfig, (value) => value.toMap()),
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
      'peeringName': ?peeringName,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointSubnetwork': ?privateEndpointSubnetwork,
      'publicEndpoint': ?publicEndpoint,
    };
  }

  factory ClusterPrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPrivateClusterConfig(
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null ? null : (map['enablePrivateEndpoint'] as bool).input(),
      enablePrivateNodes: map['enablePrivateNodes'] == null ? null : (map['enablePrivateNodes'] as bool).input(),
      masterGlobalAccessConfig: map['masterGlobalAccessConfig'] == null ? null : (ClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap((map['masterGlobalAccessConfig'] as Map).cast<String, dynamic>())).input(),
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] == null ? null : (map['masterIpv4CidrBlock'] as String).input(),
      peeringName: map['peeringName'] == null ? null : (map['peeringName'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (map['privateEndpoint'] as String).input(),
      privateEndpointSubnetwork: map['privateEndpointSubnetwork'] == null ? null : (map['privateEndpointSubnetwork'] as String).input(),
      publicEndpoint: map['publicEndpoint'] == null ? null : (map['publicEndpoint'] as String).input(),
    );
  }
}

