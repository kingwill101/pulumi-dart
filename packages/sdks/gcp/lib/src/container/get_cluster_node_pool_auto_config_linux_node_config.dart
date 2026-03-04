// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_auto_config_linux_node_config_node_kernel_module_loading.dart';

class GetClusterNodePoolAutoConfigLinuxNodeConfig {
  /// cgroupMode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String> cgroupMode;

  /// The settings for kernel module loading.
  final pulumi.Input<
    List<GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading>
  >
  nodeKernelModuleLoadings;

  /// Creates a new [GetClusterNodePoolAutoConfigLinuxNodeConfig].
  /// [cgroupMode] cgroupMode specifies the cgroup mode to be used on the node.
  /// [nodeKernelModuleLoadings] The settings for kernel module loading.
  GetClusterNodePoolAutoConfigLinuxNodeConfig({
    required this.cgroupMode,
    required this.nodeKernelModuleLoadings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': cgroupMode,
      'nodeKernelModuleLoadings':
          pulumi.Input.mapInputValue<
            List<
              GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading
            >,
            List<Map<String, dynamic>>
          >(
            nodeKernelModuleLoadings,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetClusterNodePoolAutoConfigLinuxNodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolAutoConfigLinuxNodeConfig(
      cgroupMode: pulumi.Input.fromValue(map['cgroupMode'] as String),
      nodeKernelModuleLoadings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading
        >(
          map['nodeKernelModuleLoadings']!,
          (value) =>
              GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
