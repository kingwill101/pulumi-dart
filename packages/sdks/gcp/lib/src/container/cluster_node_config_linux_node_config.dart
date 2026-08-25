// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_linux_node_config_accurate_time_config.dart';
import 'cluster_node_config_linux_node_config_custom_node_init.dart';
import 'cluster_node_config_linux_node_config_hugepages_config.dart';
import 'cluster_node_config_linux_node_config_node_kernel_module_loading.dart';
import 'cluster_node_config_linux_node_config_swap_config.dart';

class ClusterNodeConfigLinuxNodeConfig {
  /// Accurate time configuration for the node. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig?>? accurateTimeConfig;
  /// Possible cgroup modes that can be used.
  /// Accepted values are:
  /// * `CGROUP_MODE_UNSPECIFIED`: CGROUP_MODE_UNSPECIFIED is when unspecified cgroup configuration is used. The default for the GKE node OS image will be used.
  /// * `CGROUP_MODE_V1`: CGROUP_MODE_V1 specifies to use cgroupv1 for the cgroup configuration on the node image.
  /// * `CGROUP_MODE_V2`: CGROUP_MODE_V2 specifies to use cgroupv2 for the cgroup configuration on the node image.
  final pulumi.Input<String?>? cgroupMode;
  /// Custom node init settings. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigCustomNodeInit?>? customNodeInit;
  /// Amounts for 2M and 1G hugepages. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigHugepagesConfig?>? hugepagesConfig;
  /// Settings for kernel module loading. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading?>? nodeKernelModuleLoading;
  /// Swap configuration for the node. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigSwapConfig?>? swapConfig;
  /// The Linux kernel parameters to be applied to the nodes
  /// and all pods running on the nodes. Specified as a map from the key, such as
  /// `net.core.wmem_max`, to a string value. Currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// Note that validations happen all server side. All attributes are optional.
  final pulumi.Input<Map<String, String>?>? sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String?>? transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String?>? transparentHugepageEnabled;

  /// Creates a new [ClusterNodeConfigLinuxNodeConfig].
  /// [accurateTimeConfig] Accurate time configuration for the node. Structure is documented below.
  /// [cgroupMode] Possible cgroup modes that can be used.
  /// [customNodeInit] Custom node init settings. Structure is documented below.
  /// [hugepagesConfig] Amounts for 2M and 1G hugepages. Structure is documented below.
  /// [nodeKernelModuleLoading] Settings for kernel module loading. Structure is documented below.
  /// [swapConfig] Swap configuration for the node. Structure is documented below.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  const ClusterNodeConfigLinuxNodeConfig({
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
      'accurateTimeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig, Map<String, dynamic>>(accurateTimeConfig, (value) => value.toMap()),
      'cgroupMode': ?cgroupMode,
      'customNodeInit': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigCustomNodeInit, Map<String, dynamic>>(customNodeInit, (value) => value.toMap()),
      'hugepagesConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(hugepagesConfig, (value) => value.toMap()),
      'nodeKernelModuleLoading': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(nodeKernelModuleLoading, (value) => value.toMap()),
      'swapConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigSwapConfig, Map<String, dynamic>>(swapConfig, (value) => value.toMap()),
      'sysctls': ?sysctls,
      'transparentHugepageDefrag': ?transparentHugepageDefrag,
      'transparentHugepageEnabled': ?transparentHugepageEnabled,
    };
  }

  factory ClusterNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfig(
      accurateTimeConfig: (() { final guardedValue = map['accurateTimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cgroupMode: (() { final guardedValue = map['cgroupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customNodeInit: (() { final guardedValue = map['customNodeInit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigCustomNodeInit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hugepagesConfig: (() { final guardedValue = map['hugepagesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeKernelModuleLoading: (() { final guardedValue = map['nodeKernelModuleLoading']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      swapConfig: (() { final guardedValue = map['swapConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigSwapConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysctls: (() { final guardedValue = map['sysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transparentHugepageDefrag: (() { final guardedValue = map['transparentHugepageDefrag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentHugepageEnabled: (() { final guardedValue = map['transparentHugepageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
