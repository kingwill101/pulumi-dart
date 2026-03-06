// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cluster_master_global_access_config_container_v1beta1.dart';

/// Configuration options for private clusters.
class PrivateClusterConfigContainerV1beta1 {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  final pulumi.Input<bool>? enablePrivateEndpoint;
  /// Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  final pulumi.Input<bool>? enablePrivateNodes;
  /// Controls master global access settings.
  final pulumi.Input<PrivateClusterMasterGlobalAccessConfigContainerV1beta1>? masterGlobalAccessConfig;
  /// The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  final pulumi.Input<String>? masterIpv4CidrBlock;
  /// Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  final pulumi.Input<String>? privateEndpointSubnetwork;

  /// Creates a new [PrivateClusterConfigContainerV1beta1].
  /// [enablePrivateEndpoint] Whether the master's internal IP address is used as the cluster endpoint.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.
  /// [masterGlobalAccessConfig] Controls master global access settings.
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.
  /// [privateEndpointSubnetwork] Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.
  const PrivateClusterConfigContainerV1beta1({
    this.enablePrivateEndpoint,
    this.enablePrivateNodes,
    this.masterGlobalAccessConfig,
    this.masterIpv4CidrBlock,
    this.privateEndpointSubnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'enablePrivateNodes': ?enablePrivateNodes,
      'masterGlobalAccessConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterMasterGlobalAccessConfigContainerV1beta1, Map<String, dynamic>>(masterGlobalAccessConfig, (value) => value.toMap()),
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
      'privateEndpointSubnetwork': ?privateEndpointSubnetwork,
    };
  }

  factory PrivateClusterConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigContainerV1beta1(
      enablePrivateEndpoint: (() { final guardedValue = map['enablePrivateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateNodes: (() { final guardedValue = map['enablePrivateNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterGlobalAccessConfig: (() { final guardedValue = map['masterGlobalAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateClusterMasterGlobalAccessConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterIpv4CidrBlock: (() { final guardedValue = map['masterIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointSubnetwork: (() { final guardedValue = map['privateEndpointSubnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

