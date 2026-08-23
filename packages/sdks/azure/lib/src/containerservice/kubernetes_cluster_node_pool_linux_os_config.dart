// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_linux_os_config_sysctl_config.dart';

class KubernetesClusterNodePoolLinuxOsConfig {
  /// Specifies the size of swap file on each node in MB.
  final pulumi.Input<int>? swapFileSizeMb;
  /// A `sysctlConfig` block as defined below.
  final pulumi.Input<KubernetesClusterNodePoolLinuxOsConfigSysctlConfig>? sysctlConfig;
  /// Specifies the Transparent Huge Page configuration. Possible values are `always`, `madvise` and `never`.
  final pulumi.Input<String>? transparentHugePage;
  /// specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`.
  final pulumi.Input<String>? transparentHugePageDefrag;
  final pulumi.Input<String>? transparentHugePageEnabled;

  /// Creates a new [KubernetesClusterNodePoolLinuxOsConfig].
  /// [swapFileSizeMb] Specifies the size of swap file on each node in MB.
  /// [sysctlConfig] A `sysctlConfig` block as defined below.
  /// [transparentHugePage] Specifies the Transparent Huge Page configuration. Possible values are `always`, `madvise` and `never`.
  /// [transparentHugePageDefrag] specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`.
  /// [transparentHugePageEnabled] Optional.
  const KubernetesClusterNodePoolLinuxOsConfig({
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
      swapFileSizeMb: (() { final guardedValue = map['swapFileSizeMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sysctlConfig: (() { final guardedValue = map['sysctlConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodePoolLinuxOsConfigSysctlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transparentHugePage: (() { final guardedValue = map['transparentHugePage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentHugePageDefrag: (() { final guardedValue = map['transparentHugePageDefrag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentHugePageEnabled: (() { final guardedValue = map['transparentHugePageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
