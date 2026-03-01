// ignore_for_file: unused_element, unnecessary_cast


class ClusterTpuConfig {
  /// Whether Cloud TPU integration is enabled or not
  final bool enabled;
  /// IPv4 CIDR block reserved for Cloud TPU in the VPC.
  final String? ipv4CidrBlock;
  /// Whether to use service networking for Cloud TPU or not
  final bool? useServiceNetworking;

  /// Creates a new [ClusterTpuConfig].
  /// [enabled] Whether Cloud TPU integration is enabled or not
  /// [ipv4CidrBlock] IPv4 CIDR block reserved for Cloud TPU in the VPC.
  /// [useServiceNetworking] Whether to use service networking for Cloud TPU or not
  ClusterTpuConfig({
    required this.enabled,
    this.ipv4CidrBlock,
    this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ipv4CidrBlock': ?ipv4CidrBlock,
      'useServiceNetworking': ?useServiceNetworking,
    };
  }

  factory ClusterTpuConfig.fromMap(Map<String, dynamic> map) {
    return ClusterTpuConfig(
      enabled: map['enabled'] as bool,
      ipv4CidrBlock: map['ipv4CidrBlock'] == null ? null : map['ipv4CidrBlock'] as String,
      useServiceNetworking: map['useServiceNetworking'] == null ? null : map['useServiceNetworking'] as bool,
    );
  }
}

