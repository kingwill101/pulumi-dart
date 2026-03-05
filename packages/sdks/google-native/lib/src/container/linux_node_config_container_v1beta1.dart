// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_node_config_cgroup_mode_container_v1beta1.dart';

/// Parameters that can be configured on Linux nodes.
class LinuxNodeConfigContainerV1beta1 {
  /// cgroup_mode specifies the cgroup mode to be used on the node.
  final pulumi.Input<LinuxNodeConfigCgroupModeContainerV1beta1>? cgroupMode;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  final pulumi.Input<Map<String, String>>? sysctls;

  /// Creates a new [LinuxNodeConfigContainerV1beta1].
  /// [cgroupMode] cgroup_mode specifies the cgroup mode to be used on the node.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  LinuxNodeConfigContainerV1beta1({
    this.cgroupMode,
    this.sysctls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': ?pulumi.Input.mapOptionalInputValue<LinuxNodeConfigCgroupModeContainerV1beta1, String>(cgroupMode, (value) => value.wireValue),
      'sysctls': ?sysctls,
    };
  }

  factory LinuxNodeConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LinuxNodeConfigContainerV1beta1(
      cgroupMode: (() { final guardedValue = map['cgroupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxNodeConfigCgroupModeContainerV1beta1.fromValue(guardedValue as String)); })(),
      sysctls: (() { final guardedValue = map['sysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

