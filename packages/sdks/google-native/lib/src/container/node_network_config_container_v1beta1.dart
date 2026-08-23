// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_node_network_config_container_v1beta1.dart';
import 'additional_pod_network_config_container_v1beta1.dart';
import 'network_performance_config_container_v1beta1.dart';
import 'pod_cidroverprovision_config_container_v1beta1.dart';

/// Parameters for node pool-level network config.
class NodeNetworkConfigContainerV1beta1 {
  /// We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  final pulumi.Input<List<AdditionalNodeNetworkConfigContainerV1beta1>>? additionalNodeNetworkConfigs;
  /// We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  final pulumi.Input<List<AdditionalPodNetworkConfigContainerV1beta1>>? additionalPodNetworkConfigs;
  /// Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<bool>? createPodRange;
  /// Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes
  final pulumi.Input<bool>? enablePrivateNodes;
  /// Network bandwidth tier configuration.
  final pulumi.Input<NetworkPerformanceConfigContainerV1beta1>? networkPerformanceConfig;
  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final pulumi.Input<PodCIDROverprovisionConfigContainerV1beta1>? podCidrOverprovisionConfig;
  /// The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<String>? podIpv4CidrBlock;
  /// The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  final pulumi.Input<String>? podRange;

  /// Creates a new [NodeNetworkConfigContainerV1beta1].
  /// [additionalNodeNetworkConfigs] We specify the additional node networks for this node pool using this list. Each node network corresponds to an additional interface
  /// [additionalPodNetworkConfigs] We specify the additional pod networks for this node pool using this list. Each pod network corresponds to an additional alias IP range for the node
  /// [createPodRange] Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  /// [enablePrivateNodes] Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is rounded off to next power of 2 and we then double that to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [podIpv4CidrBlock] The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  /// [podRange] The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.
  const NodeNetworkConfigContainerV1beta1({
    this.additionalNodeNetworkConfigs,
    this.additionalPodNetworkConfigs,
    this.createPodRange,
    this.enablePrivateNodes,
    this.networkPerformanceConfig,
    this.podCidrOverprovisionConfig,
    this.podIpv4CidrBlock,
    this.podRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNodeNetworkConfigs': ?pulumi.Input.mapOptionalInputValue<List<AdditionalNodeNetworkConfigContainerV1beta1>, List<Map<String, dynamic>>>(additionalNodeNetworkConfigs, (value) => pulumi.Input.encodeList<AdditionalNodeNetworkConfigContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalPodNetworkConfigs': ?pulumi.Input.mapOptionalInputValue<List<AdditionalPodNetworkConfigContainerV1beta1>, List<Map<String, dynamic>>>(additionalPodNetworkConfigs, (value) => pulumi.Input.encodeList<AdditionalPodNetworkConfigContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createPodRange': ?createPodRange,
      'enablePrivateNodes': ?enablePrivateNodes,
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigContainerV1beta1, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'podCidrOverprovisionConfig': ?pulumi.Input.mapOptionalInputValue<PodCIDROverprovisionConfigContainerV1beta1, Map<String, dynamic>>(podCidrOverprovisionConfig, (value) => value.toMap()),
      'podIpv4CidrBlock': ?podIpv4CidrBlock,
      'podRange': ?podRange,
    };
  }

  factory NodeNetworkConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeNetworkConfigContainerV1beta1(
      additionalNodeNetworkConfigs: (() { final guardedValue = map['additionalNodeNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalNodeNetworkConfigContainerV1beta1>(guardedValue, (value) => AdditionalNodeNetworkConfigContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      additionalPodNetworkConfigs: (() { final guardedValue = map['additionalPodNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalPodNetworkConfigContainerV1beta1>(guardedValue, (value) => AdditionalPodNetworkConfigContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createPodRange: (() { final guardedValue = map['createPodRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateNodes: (() { final guardedValue = map['enablePrivateNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPerformanceConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podCidrOverprovisionConfig: (() { final guardedValue = map['podCidrOverprovisionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodCIDROverprovisionConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podIpv4CidrBlock: (() { final guardedValue = map['podIpv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podRange: (() { final guardedValue = map['podRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
