// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cluster_master_global_access_config_response.dart';

/// Configuration options for private clusters.
class PrivateClusterConfigResponse {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  final pulumi.Input<bool> enablePrivateEndpoint;
  /// Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  final pulumi.Input<bool> enablePrivateNodes;
  /// Controls master global access settings.
  final pulumi.Input<PrivateClusterMasterGlobalAccessConfigResponse> masterGlobalAccessConfig;
  /// The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  final pulumi.Input<String> masterIpv4CidrBlock;
  /// The peering name in the customer VPC used by this cluster.
  final pulumi.Input<String> peeringName;
  /// The internal IP address of this cluster's master endpoint.
  final pulumi.Input<String> privateEndpoint;
  /// Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  final pulumi.Input<String> privateEndpointSubnetwork;
  /// The external IP address of this cluster's master endpoint.
  final pulumi.Input<String> publicEndpoint;

  /// Creates a new [PrivateClusterConfigResponse].
  /// [enablePrivateEndpoint] Whether the master's internal IP address is used as the cluster endpoint.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  /// [masterGlobalAccessConfig] Controls master global access settings.
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  /// [peeringName] The peering name in the customer VPC used by this cluster.
  /// [privateEndpoint] The internal IP address of this cluster's master endpoint.
  /// [privateEndpointSubnetwork] Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  /// [publicEndpoint] The external IP address of this cluster's master endpoint.
  const PrivateClusterConfigResponse({
    required this.enablePrivateEndpoint,
    required this.enablePrivateNodes,
    required this.masterGlobalAccessConfig,
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
      'masterGlobalAccessConfig': pulumi.Input.mapInputValue<PrivateClusterMasterGlobalAccessConfigResponse, Map<String, dynamic>>(masterGlobalAccessConfig, (value) => value.toMap()),
      'masterIpv4CidrBlock': masterIpv4CidrBlock,
      'peeringName': peeringName,
      'privateEndpoint': privateEndpoint,
      'privateEndpointSubnetwork': privateEndpointSubnetwork,
      'publicEndpoint': publicEndpoint,
    };
  }

  factory PrivateClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigResponse(
      enablePrivateEndpoint: pulumi.Input.fromValue(map['enablePrivateEndpoint'] as bool),
      enablePrivateNodes: pulumi.Input.fromValue(map['enablePrivateNodes'] as bool),
      masterGlobalAccessConfig: pulumi.Input.fromValue(PrivateClusterMasterGlobalAccessConfigResponse.fromMap((map['masterGlobalAccessConfig']! as Map).cast<String, dynamic>())),
      masterIpv4CidrBlock: pulumi.Input.fromValue(map['masterIpv4CidrBlock'] as String),
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      privateEndpoint: pulumi.Input.fromValue(map['privateEndpoint'] as String),
      privateEndpointSubnetwork: pulumi.Input.fromValue(map['privateEndpointSubnetwork'] as String),
      publicEndpoint: pulumi.Input.fromValue(map['publicEndpoint'] as String),
    );
  }
}

