// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_linux_node_config_hugepages_config.dart';
import 'node_pool_node_config_linux_node_config_node_kernel_module_loading.dart';

class NodePoolNodeConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String>? cgroupMode;
  /// Amounts for 2M and 1G hugepages.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigHugepagesConfig>? hugepagesConfig;
  /// The settings for kernel module loading.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>? nodeKernelModuleLoading;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final pulumi.Input<Map<String, String>>? sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String>? transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String>? transparentHugepageEnabled;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [hugepagesConfig] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoading] The settings for kernel module loading.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  NodePoolNodeConfigLinuxNodeConfig({
    this.cgroupMode,
    this.hugepagesConfig,
    this.nodeKernelModuleLoading,
    this.sysctls,
    this.transparentHugepageDefrag,
    this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': ?cgroupMode,
      'hugepagesConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(hugepagesConfig, (value) => value.toMap()),
      'nodeKernelModuleLoading': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(nodeKernelModuleLoading, (value) => value.toMap()),
      'sysctls': ?sysctls,
      'transparentHugepageDefrag': ?transparentHugepageDefrag,
      'transparentHugepageEnabled': ?transparentHugepageEnabled,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfig(
      cgroupMode: map['cgroupMode'] == null ? null : (map['cgroupMode'] as String).input(),
      hugepagesConfig: map['hugepagesConfig'] == null ? null : (NodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((map['hugepagesConfig'] as Map).cast<String, dynamic>())).input(),
      nodeKernelModuleLoading: map['nodeKernelModuleLoading'] == null ? null : (NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((map['nodeKernelModuleLoading'] as Map).cast<String, dynamic>())).input(),
      sysctls: map['sysctls'] == null ? null : ((map['sysctls'] as Map).cast<String, String>()).input(),
      transparentHugepageDefrag: map['transparentHugepageDefrag'] == null ? null : (map['transparentHugepageDefrag'] as String).input(),
      transparentHugepageEnabled: map['transparentHugepageEnabled'] == null ? null : (map['transparentHugepageEnabled'] as String).input(),
    );
  }
}

