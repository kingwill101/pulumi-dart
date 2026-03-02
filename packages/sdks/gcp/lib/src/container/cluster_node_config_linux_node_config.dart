// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_linux_node_config_hugepages_config.dart';
import 'cluster_node_config_linux_node_config_node_kernel_module_loading.dart';

class ClusterNodeConfigLinuxNodeConfig {
  /// Possible cgroup modes that can be used.
  /// Accepted values are:
  /// * `CGROUP_MODE_UNSPECIFIED`: CGROUP_MODE_UNSPECIFIED is when unspecified cgroup configuration is used. The default for the GKE node OS image will be used.
  /// * `CGROUP_MODE_V1`: CGROUP_MODE_V1 specifies to use cgroupv1 for the cgroup configuration on the node image.
  /// * `CGROUP_MODE_V2`: CGROUP_MODE_V2 specifies to use cgroupv2 for the cgroup configuration on the node image.
  final pulumi.Input<String>? cgroupMode;
  /// Amounts for 2M and 1G hugepages. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigHugepagesConfig>? hugepagesConfig;
  /// Settings for kernel module loading. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading>? nodeKernelModuleLoading;
  /// The Linux kernel parameters to be applied to the nodes
  /// and all pods running on the nodes. Specified as a map from the key, such as
  /// `net.core.wmem_max`, to a string value. Currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// Note that validations happen all server side. All attributes are optional.
  final pulumi.Input<Map<String, String>>? sysctls;
  /// The Linux kernel transparent hugepage defrag setting.
  final pulumi.Input<String>? transparentHugepageDefrag;
  /// The Linux kernel transparent hugepage setting.
  final pulumi.Input<String>? transparentHugepageEnabled;

  /// Creates a new [ClusterNodeConfigLinuxNodeConfig].
  /// [cgroupMode] Possible cgroup modes that can be used.
  /// [hugepagesConfig] Amounts for 2M and 1G hugepages. Structure is documented below.
  /// [nodeKernelModuleLoading] Settings for kernel module loading. Structure is documented below.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes
  /// [transparentHugepageDefrag] The Linux kernel transparent hugepage defrag setting.
  /// [transparentHugepageEnabled] The Linux kernel transparent hugepage setting.
  ClusterNodeConfigLinuxNodeConfig({
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
      'hugepagesConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigHugepagesConfig, Map<String, dynamic>>(hugepagesConfig, (value) => value.toMap()),
      'nodeKernelModuleLoading': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading, Map<String, dynamic>>(nodeKernelModuleLoading, (value) => value.toMap()),
      'sysctls': ?sysctls,
      'transparentHugepageDefrag': ?transparentHugepageDefrag,
      'transparentHugepageEnabled': ?transparentHugepageEnabled,
    };
  }

  factory ClusterNodeConfigLinuxNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfig(
      cgroupMode: map['cgroupMode'] == null ? null : (map['cgroupMode']! as String).input(),
      hugepagesConfig: map['hugepagesConfig'] == null ? null : (ClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap((map['hugepagesConfig']! as Map).cast<String, dynamic>())).input(),
      nodeKernelModuleLoading: map['nodeKernelModuleLoading'] == null ? null : (ClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap((map['nodeKernelModuleLoading']! as Map).cast<String, dynamic>())).input(),
      sysctls: map['sysctls'] == null ? null : ((map['sysctls']! as Map).cast<String, String>()).input(),
      transparentHugepageDefrag: map['transparentHugepageDefrag'] == null ? null : (map['transparentHugepageDefrag']! as String).input(),
      transparentHugepageEnabled: map['transparentHugepageEnabled'] == null ? null : (map['transparentHugepageEnabled']! as String).input(),
    );
  }
}

