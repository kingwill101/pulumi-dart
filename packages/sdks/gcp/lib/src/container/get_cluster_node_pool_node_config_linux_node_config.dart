// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_linux_node_config_hugepages_config.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_node_kernel_module_loading.dart';

class GetClusterNodePoolNodeConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String> cgroupMode;
  /// Amounts for 2M and 1G hugepages.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig>> hugepagesConfigs;
  /// The settings for kernel module loading.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>> nodeKernelModuleLoadings;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final pulumi.Input<Map<String, String>> sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String> transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String> transparentHugepageEnabled;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [hugepagesConfigs] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  const GetClusterNodePoolNodeConfigLinuxNodeConfig({
    required this.cgroupMode,
    required this.hugepagesConfigs,
    required this.nodeKernelModuleLoadings,
    required this.sysctls,
    required this.transparentHugepageDefrag,
    required this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': cgroupMode,
      'hugepagesConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig>, List<Map<String, dynamic>>>(hugepagesConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeKernelModuleLoadings': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>, List<Map<String, dynamic>>>(nodeKernelModuleLoadings, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sysctls': sysctls,
      'transparentHugepageDefrag': transparentHugepageDefrag,
      'transparentHugepageEnabled': transparentHugepageEnabled,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfig(
      cgroupMode: pulumi.Input.fromValue(map['cgroupMode'] as String),
      hugepagesConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig>(map['hugepagesConfigs']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeKernelModuleLoadings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>(map['nodeKernelModuleLoadings']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((value as Map).cast<String, dynamic>()))),
      sysctls: pulumi.Input.fromValue((map['sysctls'] as Map).cast<String, String>()),
      transparentHugepageDefrag: pulumi.Input.fromValue(map['transparentHugepageDefrag'] as String),
      transparentHugepageEnabled: pulumi.Input.fromValue(map['transparentHugepageEnabled'] as String),
    );
  }
}

