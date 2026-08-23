// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that can be configured on Linux nodes.
class LinuxNodeConfigResponseContainerV1beta1 {
  /// cgroup_mode specifies the cgroup mode to be used on the node.
  final pulumi.Input<String> cgroupMode;
  /// The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  final pulumi.Input<Map<String, String>> sysctls;

  /// Creates a new [LinuxNodeConfigResponseContainerV1beta1].
  /// [cgroupMode] cgroup_mode specifies the cgroup mode to be used on the node.
  /// [sysctls] The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  const LinuxNodeConfigResponseContainerV1beta1({
    required this.cgroupMode,
    required this.sysctls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupMode': cgroupMode,
      'sysctls': sysctls,
    };
  }

  factory LinuxNodeConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LinuxNodeConfigResponseContainerV1beta1(
      cgroupMode: pulumi.Input.fromValue(map['cgroupMode'] as String),
      sysctls: pulumi.Input.fromValue((map['sysctls'] as Map).cast<String, String>()),
    );
  }
}
