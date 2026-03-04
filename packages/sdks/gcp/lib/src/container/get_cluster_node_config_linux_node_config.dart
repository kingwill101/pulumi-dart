// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_linux_node_config_hugepages_config.dart';
import 'get_cluster_node_config_linux_node_config_node_kernel_module_loading.dart';

class GetClusterNodeConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String> cgroupMode;

  /// Amounts for 2M and 1G hugepages.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig>>
  hugepagesConfigs;

  /// The settings for kernel module loading.
  final pulumi.Input<
    List<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>
  >
  nodeKernelModuleLoadings;

  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  final pulumi.Input<Map<String, String>> sysctls;

  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String> transparentHugepageDefrag;

  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String> transparentHugepageEnabled;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [hugepagesConfigs] Amounts for 2M and 1G hugepages.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes.
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  GetClusterNodeConfigLinuxNodeConfig({
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
      'hugepagesConfigs':
          pulumi.Input.mapInputValue<
            List<GetClusterNodeConfigLinuxNodeConfigHugepagesConfig>,
            List<Map<String, dynamic>>
          >(
            hugepagesConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterNodeConfigLinuxNodeConfigHugepagesConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodeKernelModuleLoadings':
          pulumi.Input.mapInputValue<
            List<GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>,
            List<Map<String, dynamic>>
          >(
            nodeKernelModuleLoadings,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sysctls': sysctls,
      'transparentHugepageDefrag': transparentHugepageDefrag,
      'transparentHugepageEnabled': transparentHugepageEnabled,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigLinuxNodeConfig(
      cgroupMode: pulumi.Input.fromValue(map['cgroupMode'] as String),
      hugepagesConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterNodeConfigLinuxNodeConfigHugepagesConfig
        >(
          map['hugepagesConfigs']!,
          (value) => GetClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      nodeKernelModuleLoadings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading
        >(
          map['nodeKernelModuleLoadings']!,
          (value) =>
              GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      sysctls: pulumi.Input.fromValue(
        (map['sysctls'] as Map).cast<String, String>(),
      ),
      transparentHugepageDefrag: pulumi.Input.fromValue(
        map['transparentHugepageDefrag'] as String,
      ),
      transparentHugepageEnabled: pulumi.Input.fromValue(
        map['transparentHugepageEnabled'] as String,
      ),
    );
  }
}
