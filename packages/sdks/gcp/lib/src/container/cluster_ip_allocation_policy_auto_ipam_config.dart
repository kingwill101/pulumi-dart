// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIpAllocationPolicyAutoIpamConfig {
  /// The flag that enables Auto IPAM on this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterIpAllocationPolicyAutoIpamConfig].
  /// [enabled] The flag that enables Auto IPAM on this cluster.
  const ClusterIpAllocationPolicyAutoIpamConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterIpAllocationPolicyAutoIpamConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyAutoIpamConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

