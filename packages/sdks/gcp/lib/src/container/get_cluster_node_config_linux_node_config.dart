// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_linux_node_config_accurate_time_config.dart';
import 'get_cluster_node_config_linux_node_config_custom_node_init.dart';
import 'get_cluster_node_config_linux_node_config_hugepages_config.dart';
import 'get_cluster_node_config_linux_node_config_node_kernel_module_loading.dart';
import 'get_cluster_node_config_linux_node_config_swap_config.dart';

class GetClusterNodeConfigLinuxNodeConfig {
  /// The settings for the accurate time configuration.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig>> accurateTimeConfigs;
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String> cgroupMode;
  /// The custom node init settings.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigCustomNodeInit>> customNodeInits;
  /// Amounts for 2M and 1G hugepages.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig>> hugepagesConfigs;
  /// The settings for kernel module loading.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>> nodeKernelModuleLoadings;
  /// Swap configuration for the node.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigSwapConfig>> swapConfigs;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final pulumi.Input<Map<String, String>> sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String> transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String> transparentHugepageEnabled;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfig].
  /// [accurateTimeConfigs] The settings for the accurate time configuration.
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [customNodeInits] The custom node init settings.
  /// [hugepagesConfigs] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  /// [swapConfigs] Swap configuration for the node.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  const GetClusterNodeConfigLinuxNodeConfig({
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
      'accurateTimeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig>, List<Map<String, dynamic>>>(accurateTimeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cgroupMode': cgroupMode,
      'customNodeInits': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigCustomNodeInit>, List<Map<String, dynamic>>>(customNodeInits, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigCustomNodeInit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hugepagesConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig>, List<Map<String, dynamic>>>(hugepagesConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeKernelModuleLoadings': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>, List<Map<String, dynamic>>>(nodeKernelModuleLoadings, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(value, (value) => value.toMap())),
      'swapConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigSwapConfig>, List<Map<String, dynamic>>>(swapConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sysctls': sysctls,
      'transparentHugepageDefrag': transparentHugepageDefrag,
      'transparentHugepageEnabled': transparentHugepageEnabled,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfig(
      accurateTimeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig>(map['accurateTimeConfigs']!, (value) => GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      cgroupMode: pulumi.Input.fromValue(map['cgroupMode'] as String),
      customNodeInits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigCustomNodeInit>(map['customNodeInits']!, (value) => GetClusterNodeConfigLinuxNodeConfigCustomNodeInit.fromMap((value as Map).cast<String, dynamic>()))),
      hugepagesConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig>(map['hugepagesConfigs']!, (value) => GetClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeKernelModuleLoadings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>(map['nodeKernelModuleLoadings']!, (value) => GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((value as Map).cast<String, dynamic>()))),
      swapConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfig>(map['swapConfigs']!, (value) => GetClusterNodeConfigLinuxNodeConfigSwapConfig.fromMap((value as Map).cast<String, dynamic>()))),
      sysctls: pulumi.Input.fromValue((map['sysctls'] as Map).cast<String, String>()),
      transparentHugepageDefrag: pulumi.Input.fromValue(map['transparentHugepageDefrag'] as String),
      transparentHugepageEnabled: pulumi.Input.fromValue(map['transparentHugepageEnabled'] as String),
    );
  }
}
