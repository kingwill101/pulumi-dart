// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_node_network_config_response.dart';
import 'additional_pod_network_config_response.dart';
import 'network_performance_config_response.dart';
import 'pod_cidroverprovision_config_response.dart';

/// Parameters for node pool-level network config.
class NodeNetworkConfigResponse {
  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final pulumi.Input<List<AdditionalNodeNetworkConfigResponse>> additionalNodeNetworkConfigs;
  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final pulumi.Input<List<AdditionalPodNetworkConfigResponse>> additionalPodNetworkConfigs;
  /// Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<bool> createPodRange;
  /// Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes
  final pulumi.Input<bool> enablePrivateNodes;
  /// Network bandwidth tier configuration.
  final pulumi.Input<NetworkPerformanceConfigResponse> networkPerformanceConfig;
  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final pulumi.Input<PodCIDROverprovisionConfigResponse> podCidrOverprovisionConfig;
  /// The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<String> podIpv4CidrBlock;
  /// [Output only] The utilization of the IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  final pulumi.Input<double> podIpv4RangeUtilization;
  /// The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<String> podRange;

  /// Creates a new [NodeNetworkConfigResponse].
  /// [additionalNodeNetworkConfigs] We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  /// [additionalPodNetworkConfigs] We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  /// [createPodRange] Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [podIpv4CidrBlock] The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  /// [podIpv4RangeUtilization] [Output only] The utilization of the IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  /// [podRange] The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  const NodeNetworkConfigResponse({
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
      'additionalNodeNetworkConfigs': pulumi.Input.mapInputValue<List<AdditionalNodeNetworkConfigResponse>, List<Map<String, dynamic>>>(additionalNodeNetworkConfigs, (value) => pulumi.Input.encodeList<AdditionalNodeNetworkConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodNetworkConfigs': pulumi.Input.mapInputValue<List<AdditionalPodNetworkConfigResponse>, List<Map<String, dynamic>>>(additionalPodNetworkConfigs, (value) => pulumi.Input.encodeList<AdditionalPodNetworkConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createPodRange': createPodRange,
      'enablePrivateNodes': enablePrivateNodes,
      'networkPerformanceConfig': pulumi.Input.mapInputValue<NetworkPerformanceConfigResponse, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'podCidrOverprovisionConfig': pulumi.Input.mapInputValue<PodCIDROverprovisionConfigResponse, Map<String, dynamic>>(podCidrOverprovisionConfig, (value) => value.toMap()),
      'podIpv4CidrBlock': podIpv4CidrBlock,
      'podIpv4RangeUtilization': podIpv4RangeUtilization,
      'podRange': podRange,
    };
  }

  factory NodeNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeNetworkConfigResponse(
      additionalNodeNetworkConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalNodeNetworkConfigResponse>(map['additionalNodeNetworkConfigs']!, (value) => AdditionalNodeNetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      additionalPodNetworkConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalPodNetworkConfigResponse>(map['additionalPodNetworkConfigs']!, (value) => AdditionalPodNetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      createPodRange: pulumi.Input.fromValue(map['createPodRange'] as bool),
      enablePrivateNodes: pulumi.Input.fromValue(map['enablePrivateNodes'] as bool),
      networkPerformanceConfig: pulumi.Input.fromValue(NetworkPerformanceConfigResponse.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())),
      podCidrOverprovisionConfig: pulumi.Input.fromValue(PodCIDROverprovisionConfigResponse.fromMap((map['podCidrOverprovisionConfig']! as Map).cast<String, dynamic>())),
      podIpv4CidrBlock: pulumi.Input.fromValue(map['podIpv4CidrBlock'] as String),
      podIpv4RangeUtilization: pulumi.Input.fromValue(map['podIpv4RangeUtilization'] as double),
      podRange: pulumi.Input.fromValue(map['podRange'] as String),
    );
  }
}

