// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the network configuration required for the VMware user clusters with DHCP IP configurations.
class VmwareDhcpIpConfig {
  /// enabled is a flag to mark if DHCP IP allocation is used for VMware user clusters.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [VmwareDhcpIpConfig].
  /// [enabled] enabled is a flag to mark if DHCP IP allocation is used for VMware user clusters.
  VmwareDhcpIpConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory VmwareDhcpIpConfig.fromMap(Map<String, dynamic> map) {
    return VmwareDhcpIpConfig(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

