// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_network_config_additional_node_network_config.dart';
import 'cluster_node_pool_network_config_additional_pod_network_config.dart';
import 'cluster_node_pool_network_config_network_performance_config.dart';
import 'cluster_node_pool_network_config_pod_cidr_overprovision_config.dart';

class ClusterNodePoolNetworkConfig {
  /// The accelerator network profile to use for this node pool.
  final pulumi.Input<String>? acceleratorNetworkProfile;
  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final pulumi.Input<List<ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>>? additionalNodeNetworkConfigs;
  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final pulumi.Input<List<ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>>? additionalPodNetworkConfigs;
  /// Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified.
  final pulumi.Input<bool>? createPodRange;
  /// Whether nodes have internal IP addresses only.
  final pulumi.Input<bool>? enablePrivateNodes;
  /// Network bandwidth tier configuration.
  final pulumi.Input<ClusterNodePoolNetworkConfigNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited
  final pulumi.Input<ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig>? podCidrOverprovisionConfig;
  /// The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  final pulumi.Input<String>? podIpv4CidrBlock;
  /// The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID.
  final pulumi.Input<String>? podRange;
  /// The name or self_link of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [ClusterNodePoolNetworkConfig].
  /// [acceleratorNetworkProfile] The accelerator network profile to use for this node pool.
  /// [additionalNodeNetworkConfigs] We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  /// [additionalPodNetworkConfigs] We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  /// [createPodRange] Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only.
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [podCidrOverprovisionConfig] Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited
  /// [podIpv4CidrBlock] The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  /// [podRange] The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID.
  /// [subnetwork] The name or self_link of the Google Compute Engine
  ClusterNodePoolNetworkConfig({
    this.acceleratorNetworkProfile,
    this.additionalNodeNetworkConfigs,
    this.additionalPodNetworkConfigs,
    this.createPodRange,
    this.enablePrivateNodes,
    this.networkPerformanceConfig,
    this.podCidrOverprovisionConfig,
    this.podIpv4CidrBlock,
    this.podRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorNetworkProfile': ?acceleratorNetworkProfile,
      'additionalNodeNetworkConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>, List<Map<String, dynamic>>>(additionalNodeNetworkConfigs, (value) => pulumi.Input.encodeList<ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodNetworkConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>, List<Map<String, dynamic>>>(additionalPodNetworkConfigs, (value) => pulumi.Input.encodeList<ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createPodRange': ?createPodRange,
      'enablePrivateNodes': ?enablePrivateNodes,
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNetworkConfigNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'podCidrOverprovisionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig, Map<String, dynamic>>(podCidrOverprovisionConfig, (value) => value.toMap()),
      'podIpv4CidrBlock': ?podIpv4CidrBlock,
      'podRange': ?podRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory ClusterNodePoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfig(
      acceleratorNetworkProfile: (() { final guardedValue = map['acceleratorNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      additionalNodeNetworkConfigs: (() { final guardedValue = map['additionalNodeNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>(guardedValue, (value) => ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      additionalPodNetworkConfigs: (() { final guardedValue = map['additionalPodNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>(guardedValue, (value) => ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createPodRange: (() { final guardedValue = map['createPodRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateNodes: (() { final guardedValue = map['enablePrivateNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podCidrOverprovisionConfig: (() { final guardedValue = map['podCidrOverprovisionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podIpv4CidrBlock: (() { final guardedValue = map['podIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podRange: (() { final guardedValue = map['podRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

