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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      ipv4CidrBlock: (() { final guardedValue = map['ipv4CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useServiceNetworking: (() { final guardedValue = map['useServiceNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

