// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterNetworkConfigDhcpIpConfig {
  /// enabled is a flag to mark if DHCP IP allocation is
  /// used for VMware user clusters.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VMwareClusterNetworkConfigDhcpIpConfig].
  /// [enabled] enabled is a flag to mark if DHCP IP allocation is
  VMwareClusterNetworkConfigDhcpIpConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VMwareClusterNetworkConfigDhcpIpConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigDhcpIpConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

