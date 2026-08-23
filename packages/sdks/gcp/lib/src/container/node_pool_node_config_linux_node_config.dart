// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_linux_node_config_accurate_time_config.dart';
import 'node_pool_node_config_linux_node_config_custom_node_init.dart';
import 'node_pool_node_config_linux_node_config_hugepages_config.dart';
import 'node_pool_node_config_linux_node_config_node_kernel_module_loading.dart';
import 'node_pool_node_config_linux_node_config_swap_config.dart';

class NodePoolNodeConfigLinuxNodeConfig {
  /// The settings for the accurate time configuration.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig>? accurateTimeConfig;
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String>? cgroupMode;
  /// The custom node init settings.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigCustomNodeInit>? customNodeInit;
  /// Amounts for 2M and 1G hugepages.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigHugepagesConfig>? hugepagesConfig;
  /// The settings for kernel module loading.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading>? nodeKernelModuleLoading;
  /// Swap configuration for the node.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigSwapConfig>? swapConfig;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final pulumi.Input<Map<String, String>>? sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String>? transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String>? transparentHugepageEnabled;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfig].
  /// [accurateTimeConfig] The settings for the accurate time configuration.
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [customNodeInit] The custom node init settings.
  /// [hugepagesConfig] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoading] The settings for kernel module loading.
  /// [swapConfig] Swap configuration for the node.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  const NodePoolNodeConfigLinuxNodeConfig({
    this.accurateTimeConfig,
    this.cgroupMode,
    this.customNodeInit,
    this.hugepagesConfig,
    this.nodeKernelModuleLoading,
    this.swapConfig,
    this.sysctls,
    this.transparentHugepageDefrag,
    this.transparentHugepageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accurateTimeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig, Map<String, dynamic>>(accurateTimeConfig, (value) => value.toMap()),
      'cgroupMode': ?cgroupMode,
      'customNodeInit': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigCustomNodeInit, Map<String, dynamic>>(customNodeInit, (value) => value.toMap()),
      'hugepagesConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(hugepagesConfig, (value) => value.toMap()),
      'nodeKernelModuleLoading': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(nodeKernelModuleLoading, (value) => value.toMap()),
      'swapConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigSwapConfig, Map<String, dynamic>>(swapConfig, (value) => value.toMap()),
      'sysctls': ?sysctls,
      'transparentHugepageDefrag': ?transparentHugepageDefrag,
      'transparentHugepageEnabled': ?transparentHugepageEnabled,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfig(
      accurateTimeConfig: (() { final guardedValue = map['accurateTimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cgroupMode: (() { final guardedValue = map['cgroupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customNodeInit: (() { final guardedValue = map['customNodeInit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigCustomNodeInit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hugepagesConfig: (() { final guardedValue = map['hugepagesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeKernelModuleLoading: (() { final guardedValue = map['nodeKernelModuleLoading']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      swapConfig: (() { final guardedValue = map['swapConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigSwapConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysctls: (() { final guardedValue = map['sysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transparentHugepageDefrag: (() { final guardedValue = map['transparentHugepageDefrag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentHugepageEnabled: (() { final guardedValue = map['transparentHugepageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
