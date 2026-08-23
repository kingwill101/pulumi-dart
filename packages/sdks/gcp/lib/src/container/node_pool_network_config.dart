// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_network_config_additional_node_network_config.dart';
import 'node_pool_network_config_additional_pod_network_config.dart';
import 'node_pool_network_config_network_performance_config.dart';
import 'node_pool_network_config_pod_cidr_overprovision_config.dart';

class NodePoolNetworkConfig {
  /// ) - Specifies the accelerator network profile for nodes in this node pool. Setting to `"auto"` enables GKE to automatically configure high-performance networking settings for nodes with accelerators (like GPUs). GKE manages the underlying resources (like VPCs and subnets) for this configuration.
  final pulumi.Input<String>? acceleratorNetworkProfile;
  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface.
  /// Structure is documented below
  final pulumi.Input<List<NodePoolNetworkConfigAdditionalNodeNetworkConfig>>? additionalNodeNetworkConfigs;
  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node.
  /// Structure is documented below
  final pulumi.Input<List<NodePoolNetworkConfigAdditionalPodNetworkConfig>>? additionalPodNetworkConfigs;
  /// Whether to create a new range for pod IPs in this node pool. Defaults are provided for `podRange` and `podIpv4CidrBlock` if they are not specified.
  final pulumi.Input<bool>? createPodRange;
  /// Whether nodes have internal IP addresses only.
  final pulumi.Input<bool>? enablePrivateNodes;
  /// Network bandwidth tier configuration. Structure is documented below.
  final pulumi.Input<NodePoolNetworkConfigNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited. Structure is documented below.
  final pulumi.Input<NodePoolNetworkConfigPodCidrOverprovisionConfig>? podCidrOverprovisionConfig;
  /// The IP address range for pod IPs in this node pool. Only applicable if createPodRange is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  final pulumi.Input<String>? podIpv4CidrBlock;
  /// The ID of the secondary range for pod IPs. If `createPodRange` is true, this ID is used for the new range. If `createPodRange` is false, uses an existing secondary range with this ID.
  final pulumi.Input<String>? podRange;
  /// The subnetwork path for the node pool. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`. If the cluster is associated with multiple subnetworks, the subnetwork for the node pool is picked based on the IP utilization during node pool creation and is immutable
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NodePoolNetworkConfig].
  /// [acceleratorNetworkProfile] ) - Specifies the accelerator network profile for nodes in this node pool. Setting to `"auto"` enables GKE to automatically configure high-performance networking settings for nodes with accelerators (like GPUs). GKE manages the underlying resources (like VPCs and subnets) for this configuration.
  /// [additionalNodeNetworkConfigs] We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface.
  /// [additionalPodNetworkConfigs] We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node.
  /// [createPodRange] Whether to create a new range for pod IPs in this node pool. Defaults are provided for `podRange` and `podIpv4CidrBlock` if they are not specified.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only.
  /// [networkPerformanceConfig] Network bandwidth tier configuration. Structure is documented below.
  /// [podCidrOverprovisionConfig] Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited. Structure is documented below.
  /// [podIpv4CidrBlock] The IP address range for pod IPs in this node pool. Only applicable if createPodRange is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  /// [podRange] The ID of the secondary range for pod IPs. If `createPodRange` is true, this ID is used for the new range. If `createPodRange` is false, uses an existing secondary range with this ID.
  /// [subnetwork] The subnetwork path for the node pool. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`. If the cluster is associated with multiple subnetworks, the subnetwork for the node pool is picked based on the IP utilization during node pool creation and is immutable
  const NodePoolNetworkConfig({
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
      'additionalNodeNetworkConfigs': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNetworkConfigAdditionalNodeNetworkConfig>, List<Map<String, dynamic>>>(additionalNodeNetworkConfigs, (value) => pulumi.Input.encodeList<NodePoolNetworkConfigAdditionalNodeNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodNetworkConfigs': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNetworkConfigAdditionalPodNetworkConfig>, List<Map<String, dynamic>>>(additionalPodNetworkConfigs, (value) => pulumi.Input.encodeList<NodePoolNetworkConfigAdditionalPodNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createPodRange': ?createPodRange,
      'enablePrivateNodes': ?enablePrivateNodes,
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNetworkConfigNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'podCidrOverprovisionConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNetworkConfigPodCidrOverprovisionConfig, Map<String, dynamic>>(podCidrOverprovisionConfig, (value) => value.toMap()),
      'podIpv4CidrBlock': ?podIpv4CidrBlock,
      'podRange': ?podRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory NodePoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNetworkConfig(
      acceleratorNetworkProfile: (() { final guardedValue = map['acceleratorNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      additionalNodeNetworkConfigs: (() { final guardedValue = map['additionalNodeNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNetworkConfigAdditionalNodeNetworkConfig>(guardedValue, (value) => NodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      additionalPodNetworkConfigs: (() { final guardedValue = map['additionalPodNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNetworkConfigAdditionalPodNetworkConfig>(guardedValue, (value) => NodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createPodRange: (() { final guardedValue = map['createPodRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateNodes: (() { final guardedValue = map['enablePrivateNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNetworkConfigNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podCidrOverprovisionConfig: (() { final guardedValue = map['podCidrOverprovisionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podIpv4CidrBlock: (() { final guardedValue = map['podIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podRange: (() { final guardedValue = map['podRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
