// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_linux_os_config_sysctl_config.dart';

class KubernetesClusterNodePoolLinuxOsConfig {
  /// Specifies the size of swap file on each node in MB.
  final pulumi.Input<int>? swapFileSizeMb;
  /// A `sysctl_config` block as defined below.
  final pulumi.Input<KubernetesClusterNodePoolLinuxOsConfigSysctlConfig>? sysctlConfig;
  /// Specifies the Transparent Huge Page configuration. Possible values are `always`, `madvise` and `never`.
  final pulumi.Input<String>? transparentHugePage;
  /// specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`.
  final pulumi.Input<String>? transparentHugePageDefrag;
  final pulumi.Input<String>? transparentHugePageEnabled;

  /// Creates a new [KubernetesClusterNodePoolLinuxOsConfig].
  /// [swapFileSizeMb] Specifies the size of swap file on each node in MB.
  /// [sysctlConfig] A `sysctl_config` block as defined below.
  /// [transparentHugePage] Specifies the Transparent Huge Page configuration. Possible values are `always`, `madvise` and `never`.
  /// [transparentHugePageDefrag] specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`.
  /// [transparentHugePageEnabled] Optional.
  KubernetesClusterNodePoolLinuxOsConfig({
    this.swapFileSizeMb,
    this.sysctlConfig,
    this.transparentHugePage,
    this.transparentHugePageDefrag,
    this.transparentHugePageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapFileSizeMb': ?swapFileSizeMb,
      'sysctlConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolLinuxOsConfigSysctlConfig, Map<String, dynamic>>(sysctlConfig, (value) => value.toMap()),
      'transparentHugePage': ?transparentHugePage,
      'transparentHugePageDefrag': ?transparentHugePageDefrag,
      'transparentHugePageEnabled': ?transparentHugePageEnabled,
    };
  }

  factory KubernetesClusterNodePoolLinuxOsConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolLinuxOsConfig(
      swapFileSizeMb: map['swapFileSizeMb'] == null ? null : (map['swapFileSizeMb']! as int).input(),
      sysctlConfig: map['sysctlConfig'] == null ? null : (KubernetesClusterNodePoolLinuxOsConfigSysctlConfig.fromMap((map['sysctlConfig']! as Map).cast<String, dynamic>())).input(),
      transparentHugePage: map['transparentHugePage'] == null ? null : (map['transparentHugePage']! as String).input(),
      transparentHugePageDefrag: map['transparentHugePageDefrag'] == null ? null : (map['transparentHugePageDefrag']! as String).input(),
      transparentHugePageEnabled: map['transparentHugePageEnabled'] == null ? null : (map['transparentHugePageEnabled']! as String).input(),
    );
  }
}

