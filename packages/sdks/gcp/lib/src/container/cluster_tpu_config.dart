// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterTpuConfig {
  /// Whether Cloud TPU integration is enabled or not
  final pulumi.Input<bool> enabled;
  /// IPv4 CIDR block reserved for Cloud TPU in the VPC.
  final pulumi.Input<String>? ipv4CidrBlock;
  /// Whether to use service networking for Cloud TPU or not
  final pulumi.Input<bool>? useServiceNetworking;

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
      enabled: (map['enabled'] as bool).input(),
      ipv4CidrBlock: map['ipv4CidrBlock'] == null ? null : (map['ipv4CidrBlock']! as String).input(),
      useServiceNetworking: map['useServiceNetworking'] == null ? null : (map['useServiceNetworking']! as bool).input(),
    );
  }
}

