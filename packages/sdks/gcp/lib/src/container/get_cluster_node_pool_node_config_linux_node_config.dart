// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_linux_node_config_accurate_time_config.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_custom_node_init.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_hugepages_config.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_node_kernel_module_loading.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_swap_config.dart';

class GetClusterNodePoolNodeConfigLinuxNodeConfig {
  /// The settings for the accurate time configuration.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig>> accurateTimeConfigs;
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String> cgroupMode;
  /// The custom node init settings.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit>> customNodeInits;
  /// Amounts for 2M and 1G hugepages.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig>> hugepagesConfigs;
  /// The settings for kernel module loading.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>> nodeKernelModuleLoadings;
  /// Swap configuration for the node.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig>> swapConfigs;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final pulumi.Input<Map<String, String>> sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String> transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String> transparentHugepageEnabled;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfig].
  /// [accurateTimeConfigs] The settings for the accurate time configuration.
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [customNodeInits] The custom node init settings.
  /// [hugepagesConfigs] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  /// [swapConfigs] Swap configuration for the node.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  const GetClusterNodePoolNodeConfigLinuxNodeConfig({
    required this.accurateTimeConfigs,
    required this.cgroupMode,
    required this.customNodeInits,
    required this.hugepagesConfigs,
    required this.nodeKernelModuleLoadings,
    required this.swapConfigs,
    required this.sysctls,
    required this.transparentHugepageDefrag,
    required this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accurateTimeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig>, List<Map<String, dynamic>>>(accurateTimeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cgroupMode': cgroupMode,
      'customNodeInits': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit>, List<Map<String, dynamic>>>(customNodeInits, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hugepagesConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig>, List<Map<String, dynamic>>>(hugepagesConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeKernelModuleLoadings': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>, List<Map<String, dynamic>>>(nodeKernelModuleLoadings, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(value, (value) => value.toMap())),
      'swapConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig>, List<Map<String, dynamic>>>(swapConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sysctls': sysctls,
      'transparentHugepageDefrag': transparentHugepageDefrag,
      'transparentHugepageEnabled': transparentHugepageEnabled,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfig(
      accurateTimeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig>(map['accurateTimeConfigs']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      cgroupMode: pulumi.Input.fromValue(map['cgroupMode'] as String),
      customNodeInits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit>(map['customNodeInits']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit.fromMap((value as Map).cast<String, dynamic>()))),
      hugepagesConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig>(map['hugepagesConfigs']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeKernelModuleLoadings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>(map['nodeKernelModuleLoadings']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((value as Map).cast<String, dynamic>()))),
      swapConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig>(map['swapConfigs']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig.fromMap((value as Map).cast<String, dynamic>()))),
      sysctls: pulumi.Input.fromValue((map['sysctls'] as Map).cast<String, String>()),
      transparentHugepageDefrag: pulumi.Input.fromValue(map['transparentHugepageDefrag'] as String),
      transparentHugepageEnabled: pulumi.Input.fromValue(map['transparentHugepageEnabled'] as String),
    );
  }
}
