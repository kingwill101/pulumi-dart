// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_network_config_additional_node_network_config.dart';
import 'get_cluster_node_pool_network_config_additional_pod_network_config.dart';
import 'get_cluster_node_pool_network_config_network_performance_config.dart';
import 'get_cluster_node_pool_network_config_pod_cidr_overprovision_config.dart';

class GetClusterNodePoolNetworkConfig {
  /// The accelerator network profile to use for this node pool.
  final pulumi.Input<String> acceleratorNetworkProfile;
  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final pulumi.Input<List<GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>> additionalNodeNetworkConfigs;
  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final pulumi.Input<List<GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>> additionalPodNetworkConfigs;
  /// Whether to create a new range for pod IPs in this node pool. Defaults are provided for podRange and podIpv4CidrBlock if they are not specified.
  final pulumi.Input<bool> createPodRange;
  /// Whether nodes have internal IP addresses only.
  final pulumi.Input<bool> enablePrivateNodes;
  /// Network bandwidth tier configuration.
  final pulumi.Input<List<GetClusterNodePoolNetworkConfigNetworkPerformanceConfig>> networkPerformanceConfigs;
  /// Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited
  final pulumi.Input<List<GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig>> podCidrOverprovisionConfigs;
  /// The IP address range for pod IPs in this node pool. Only applicable if createPodRange is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  final pulumi.Input<String> podIpv4CidrBlock;
  /// The ID of the secondary range for pod IPs. If createPodRange is true, this ID is used for the new range. If createPodRange is false, uses an existing secondary range with this ID.
  final pulumi.Input<String> podRange;
  /// The subnetwork name/path for the node pool. Format: subnetwork or projects/{project}/regions/{region}/subnetworks/{subnetwork}. This value may be specified via the nested networkConfig block (setting this attribute directly is supported for backward compatibility). Once created the node pool's subnetwork is immutable. If not set, the provider/API will choose the subnetwork (e.g. based on IP utilization) and report it here.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetClusterNodePoolNetworkConfig].
  /// [acceleratorNetworkProfile] The accelerator network profile to use for this node pool.
  /// [additionalNodeNetworkConfigs] We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  /// [additionalPodNetworkConfigs] We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  /// [createPodRange] Whether to create a new range for pod IPs in this node pool. Defaults are provided for podRange and podIpv4CidrBlock if they are not specified.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only.
  /// [networkPerformanceConfigs] Network bandwidth tier configuration.
  /// [podCidrOverprovisionConfigs] Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited
  /// [podIpv4CidrBlock] The IP address range for pod IPs in this node pool. Only applicable if createPodRange is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use.
  /// [podRange] The ID of the secondary range for pod IPs. If createPodRange is true, this ID is used for the new range. If createPodRange is false, uses an existing secondary range with this ID.
  /// [subnetwork] The subnetwork name/path for the node pool. Format: subnetwork or projects/{project}/regions/{region}/subnetworks/{subnetwork}. This value may be specified via the nested networkConfig block (setting this attribute directly is supported for backward compatibility). Once created the node pool's subnetwork is immutable. If not set, the provider/API will choose the subnetwork (e.g. based on IP utilization) and report it here.
  const GetClusterNodePoolNetworkConfig({
    required this.acceleratorNetworkProfile,
    required this.additionalNodeNetworkConfigs,
    required this.additionalPodNetworkConfigs,
    required this.createPodRange,
    required this.enablePrivateNodes,
    required this.networkPerformanceConfigs,
    required this.podCidrOverprovisionConfigs,
    required this.podIpv4CidrBlock,
    required this.podRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorNetworkProfile': acceleratorNetworkProfile,
      'additionalNodeNetworkConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>, List<Map<String, dynamic>>>(additionalNodeNetworkConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodNetworkConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>, List<Map<String, dynamic>>>(additionalPodNetworkConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createPodRange': createPodRange,
      'enablePrivateNodes': enablePrivateNodes,
      'networkPerformanceConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNetworkConfigNetworkPerformanceConfig>, List<Map<String, dynamic>>>(networkPerformanceConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNetworkConfigNetworkPerformanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podCidrOverprovisionConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig>, List<Map<String, dynamic>>>(podCidrOverprovisionConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podIpv4CidrBlock': podIpv4CidrBlock,
      'podRange': podRange,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterNodePoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfig(
      acceleratorNetworkProfile: pulumi.Input.fromValue(map['acceleratorNetworkProfile'] as String),
      additionalNodeNetworkConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig>(map['additionalNodeNetworkConfigs']!, (value) => GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))),
      additionalPodNetworkConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig>(map['additionalPodNetworkConfigs']!, (value) => GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))),
      createPodRange: pulumi.Input.fromValue(map['createPodRange'] as bool),
      enablePrivateNodes: pulumi.Input.fromValue(map['enablePrivateNodes'] as bool),
      networkPerformanceConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNetworkConfigNetworkPerformanceConfig>(map['networkPerformanceConfigs']!, (value) => GetClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      podCidrOverprovisionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig>(map['podCidrOverprovisionConfigs']!, (value) => GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      podIpv4CidrBlock: pulumi.Input.fromValue(map['podIpv4CidrBlock'] as String),
      podRange: pulumi.Input.fromValue(map['podRange'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
