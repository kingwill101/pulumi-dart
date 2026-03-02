// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterTpuConfig {
  /// Whether Cloud TPU integration is enabled or not
  final pulumi.Input<bool> enabled;
  /// IPv4 CIDR block reserved for Cloud TPU in the VPC.
  final pulumi.Input<String> ipv4CidrBlock;
  /// Whether to use service networking for Cloud TPU or not
  final pulumi.Input<bool> useServiceNetworking;

  /// Creates a new [GetClusterTpuConfig].
  /// [enabled] Whether Cloud TPU integration is enabled or not
  /// [ipv4CidrBlock] IPv4 CIDR block reserved for Cloud TPU in the VPC.
  /// [useServiceNetworking] Whether to use service networking for Cloud TPU or not
  GetClusterTpuConfig({
    required this.enabled,
    required this.ipv4CidrBlock,
    required this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ipv4CidrBlock': ipv4CidrBlock,
      'useServiceNetworking': useServiceNetworking,
    };
  }

  factory GetClusterTpuConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterTpuConfig(
      enabled: (map['enabled'] as bool).input(),
      ipv4CidrBlock: (map['ipv4CidrBlock'] as String).input(),
      useServiceNetworking: (map['useServiceNetworking'] as bool).input(),
    );
  }
}

