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
      acceleratorNetworkProfile: map['acceleratorNetworkProfile'] == null ? null : (map['acceleratorNetworkProfile']! as String).input(),
      additionalNodeNetworkConfigs: map['additionalNodeNetworkConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>(map['additionalNodeNetworkConfigs']!, (value) => ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      additionalPodNetworkConfigs: map['additionalPodNetworkConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>(map['additionalPodNetworkConfigs']!, (value) => ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createPodRange: map['createPodRange'] == null ? null : (map['createPodRange']! as bool).input(),
      enablePrivateNodes: map['enablePrivateNodes'] == null ? null : (map['enablePrivateNodes']! as bool).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (ClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      podCidrOverprovisionConfig: map['podCidrOverprovisionConfig'] == null ? null : (ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap((map['podCidrOverprovisionConfig']! as Map).cast<String, dynamic>())).input(),
      podIpv4CidrBlock: map['podIpv4CidrBlock'] == null ? null : (map['podIpv4CidrBlock']! as String).input(),
      podRange: map['podRange'] == null ? null : (map['podRange']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

