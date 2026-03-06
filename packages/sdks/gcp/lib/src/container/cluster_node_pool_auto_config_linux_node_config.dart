// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_auto_config_linux_node_config_node_kernel_module_loading.dart';

class ClusterNodePoolAutoConfigLinuxNodeConfig {
  /// Possible cgroup modes that can be used.
  /// Accepted values are:
  /// * `CGROUP_MODE_UNSPECIFIED`: CGROUP_MODE_UNSPECIFIED is when unspecified cgroup configuration is used. The default for the GKE node OS image will be used.
  /// * `CGROUP_MODE_V1`: CGROUP_MODE_V1 specifies to use cgroupv1 for the cgroup configuration on the node image.
  /// * `CGROUP_MODE_V2`: CGROUP_MODE_V2 specifies to use cgroupv2 for the cgroup configuration on the node image.
  final pulumi.Input<String>? cgroupMode;
  /// Settings for kernel module loading. Structure is documented below.
  final pulumi.Input<ClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading>? nodeKernelModuleLoading;

  /// Creates a new [ClusterNodePoolAutoConfigLinuxNodeConfig].
  /// [cgroupMode] Possible cgroup modes that can be used.
  /// [nodeKernelModuleLoading] Settings for kernel module loading. Structure is documented below.
  const ClusterNodePoolAutoConfigLinuxNodeConfig({
    this.cgroupMode,
    this.nodeKernelModuleLoading,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': ?cgroupMode,
      'nodeKernelModuleLoading': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(nodeKernelModuleLoading, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolAutoConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolAutoConfigLinuxNodeConfig(
      cgroupMode: (() { final guardedValue = map['cgroupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeKernelModuleLoading: (() { final guardedValue = map['nodeKernelModuleLoading']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

