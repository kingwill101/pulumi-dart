// ignore_for_file: unused_element, unnecessary_cast


class ClusterIpAllocationPolicyAutoIpamConfig {
  /// The flag that enables Auto IPAM on this cluster.
  final bool enabled;

  /// Creates a new [ClusterIpAllocationPolicyAutoIpamConfig].
  /// [enabled] The flag that enables Auto IPAM on this cluster.
  ClusterIpAllocationPolicyAutoIpamConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterIpAllocationPolicyAutoIpamConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyAutoIpamConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

