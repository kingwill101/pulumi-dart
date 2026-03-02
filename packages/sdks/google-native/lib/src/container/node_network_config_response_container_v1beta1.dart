// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_node_network_config_response_container_v1beta1.dart';
import 'additional_pod_network_config_response_container_v1beta1.dart';
import 'network_performance_config_response_container_v1beta1.dart';
import 'pod_cidroverprovision_config_response_container_v1beta1.dart';

/// Parameters for node pool-level network config.
class NodeNetworkConfigResponseContainerV1beta1 {
  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final pulumi.Input<List<AdditionalNodeNetworkConfigResponseContainerV1beta1>> additionalNodeNetworkConfigs;
  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final pulumi.Input<List<AdditionalPodNetworkConfigResponseContainerV1beta1>> additionalPodNetworkConfigs;
  /// Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<bool> createPodRange;
  /// Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes
  final pulumi.Input<bool> enablePrivateNodes;
  /// Network bandwidth tier configuration.
  final pulumi.Input<NetworkPerformanceConfigResponseContainerV1beta1> networkPerformanceConfig;
  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final pulumi.Input<PodCIDROverprovisionConfigResponseContainerV1beta1> podCidrOverprovisionConfig;
  /// The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<String> podIpv4CidrBlock;
  /// [Output only] The utilization of the IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  final pulumi.Input<double> podIpv4RangeUtilization;
  /// The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<String> podRange;

  /// Creates a new [NodeNetworkConfigResponseContainerV1beta1].
  /// [additionalNodeNetworkConfigs] We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  /// [additionalPodNetworkConfigs] We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  /// [createPodRange] Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [podIpv4CidrBlock] The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  /// [podIpv4RangeUtilization] [Output only] The utilization of the IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  /// [podRange] The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  NodeNetworkConfigResponseContainerV1beta1({
    required this.additionalNodeNetworkConfigs,
    required this.additionalPodNetworkConfigs,
    required this.createPodRange,
    required this.enablePrivateNodes,
    required this.networkPerformanceConfig,
    required this.podCidrOverprovisionConfig,
    required this.podIpv4CidrBlock,
    required this.podIpv4RangeUtilization,
    required this.podRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNodeNetworkConfigs': pulumi.Input.mapInputValue<List<AdditionalNodeNetworkConfigResponseContainerV1beta1>, List<Map<String, dynamic>>>(additionalNodeNetworkConfigs, (value) => pulumi.Input.encodeList<AdditionalNodeNetworkConfigResponseContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodNetworkConfigs': pulumi.Input.mapInputValue<List<AdditionalPodNetworkConfigResponseContainerV1beta1>, List<Map<String, dynamic>>>(additionalPodNetworkConfigs, (value) => pulumi.Input.encodeList<AdditionalPodNetworkConfigResponseContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createPodRange': createPodRange,
      'enablePrivateNodes': enablePrivateNodes,
      'networkPerformanceConfig': pulumi.Input.mapInputValue<NetworkPerformanceConfigResponseContainerV1beta1, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'podCidrOverprovisionConfig': pulumi.Input.mapInputValue<PodCIDROverprovisionConfigResponseContainerV1beta1, Map<String, dynamic>>(podCidrOverprovisionConfig, (value) => value.toMap()),
      'podIpv4CidrBlock': podIpv4CidrBlock,
      'podIpv4RangeUtilization': podIpv4RangeUtilization,
      'podRange': podRange,
    };
  }

  factory NodeNetworkConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeNetworkConfigResponseContainerV1beta1(
      additionalNodeNetworkConfigs: (pulumi.Input.decodeList<AdditionalNodeNetworkConfigResponseContainerV1beta1>(map['additionalNodeNetworkConfigs'], (value) => AdditionalNodeNetworkConfigResponseContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      additionalPodNetworkConfigs: (pulumi.Input.decodeList<AdditionalPodNetworkConfigResponseContainerV1beta1>(map['additionalPodNetworkConfigs'], (value) => AdditionalPodNetworkConfigResponseContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createPodRange: (map['createPodRange'] as bool).input(),
      enablePrivateNodes: (map['enablePrivateNodes'] as bool).input(),
      networkPerformanceConfig: (NetworkPerformanceConfigResponseContainerV1beta1.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>())).input(),
      podCidrOverprovisionConfig: (PodCIDROverprovisionConfigResponseContainerV1beta1.fromMap((map['podCidrOverprovisionConfig'] as Map).cast<String, dynamic>())).input(),
      podIpv4CidrBlock: (map['podIpv4CidrBlock'] as String).input(),
      podIpv4RangeUtilization: (map['podIpv4RangeUtilization'] as double).input(),
      podRange: (map['podRange'] as String).input(),
    );
  }
}

