// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_private_cluster_config_master_global_access_config.dart';

class GetClusterPrivateClusterConfig {
  /// When true, the cluster's private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. When false, either endpoint can be used.
  final pulumi.Input<bool> enablePrivateEndpoint;
  /// Enables the private cluster feature, creating a private endpoint on the cluster. In a private cluster, nodes only have RFC 1918 private addresses and communicate with the master's private endpoint via private networking.
  final pulumi.Input<bool> enablePrivateNodes;
  /// Controls cluster master global access settings.
  final pulumi.Input<List<GetClusterPrivateClusterConfigMasterGlobalAccessConfig>> masterGlobalAccessConfigs;
  /// The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning private IP addresses to the cluster master(s) and the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network, and it must be a /28 subnet. See Private Cluster Limitations for more details. This field only applies to private clusters, when enable_private_nodes is true.
  final pulumi.Input<String> masterIpv4CidrBlock;
  /// The name of the peering between this cluster and the Google owned VPC.
  final pulumi.Input<String> peeringName;
  /// The internal IP address of this cluster's master endpoint.
  final pulumi.Input<String> privateEndpoint;
  /// Subnetwork in cluster's network where master's endpoint will be provisioned.
  final pulumi.Input<String> privateEndpointSubnetwork;
  /// The external IP address of this cluster's master endpoint.
  final pulumi.Input<String> publicEndpoint;

  /// Creates a new [GetClusterPrivateClusterConfig].
  /// [enablePrivateEndpoint] When true, the cluster's private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. When false, either endpoint can be used.
  /// [enablePrivateNodes] Enables the private cluster feature, creating a private endpoint on the cluster. In a private cluster, nodes only have RFC 1918 private addresses and communicate with the master's private endpoint via private networking.
  /// [masterGlobalAccessConfigs] Controls cluster master global access settings.
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning private IP addresses to the cluster master(s) and the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network, and it must be a /28 subnet. See Private Cluster Limitations for more details. This field only applies to private clusters, when enable_private_nodes is true.
  /// [peeringName] The name of the peering between this cluster and the Google owned VPC.
  /// [privateEndpoint] The internal IP address of this cluster's master endpoint.
  /// [privateEndpointSubnetwork] Subnetwork in cluster's network where master's endpoint will be provisioned.
  /// [publicEndpoint] The external IP address of this cluster's master endpoint.
  GetClusterPrivateClusterConfig({
    required this.enablePrivateEndpoint,
    required this.enablePrivateNodes,
    required this.masterGlobalAccessConfigs,
    required this.masterIpv4CidrBlock,
    required this.peeringName,
    required this.privateEndpoint,
    required this.privateEndpointSubnetwork,
    required this.publicEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': enablePrivateEndpoint,
      'enablePrivateNodes': enablePrivateNodes,
      'masterGlobalAccessConfigs': pulumi.Input.mapInputValue<List<GetClusterPrivateClusterConfigMasterGlobalAccessConfig>, List<Map<String, dynamic>>>(masterGlobalAccessConfigs, (value) => pulumi.Input.encodeList<GetClusterPrivateClusterConfigMasterGlobalAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'masterIpv4CidrBlock': masterIpv4CidrBlock,
      'peeringName': peeringName,
      'privateEndpoint': privateEndpoint,
      'privateEndpointSubnetwork': privateEndpointSubnetwork,
      'publicEndpoint': publicEndpoint,
    };
  }

  factory GetClusterPrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPrivateClusterConfig(
      enablePrivateEndpoint: pulumi.Input.fromValue(map['enablePrivateEndpoint'] as bool),
      enablePrivateNodes: pulumi.Input.fromValue(map['enablePrivateNodes'] as bool),
      masterGlobalAccessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterPrivateClusterConfigMasterGlobalAccessConfig>(map['masterGlobalAccessConfigs']!, (value) => GetClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      masterIpv4CidrBlock: pulumi.Input.fromValue(map['masterIpv4CidrBlock'] as String),
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      privateEndpoint: pulumi.Input.fromValue(map['privateEndpoint'] as String),
      privateEndpointSubnetwork: pulumi.Input.fromValue(map['privateEndpointSubnetwork'] as String),
      publicEndpoint: pulumi.Input.fromValue(map['publicEndpoint'] as String),
    );
  }
}

