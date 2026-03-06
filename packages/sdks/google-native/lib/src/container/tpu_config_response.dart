// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Cloud TPU.
class TpuConfigResponse {
  /// Whether Cloud TPU integration is enabled or not.
  final pulumi.Input<bool> enabled;
  /// IPv4 CIDR block reserved for Cloud TPU in the VPC.
  final pulumi.Input<String> ipv4CidrBlock;
  /// Whether to use service networking for Cloud TPU or not.
  final pulumi.Input<bool> useServiceNetworking;

  /// Creates a new [TpuConfigResponse].
  /// [enabled] Whether Cloud TPU integration is enabled or not.
  /// [ipv4CidrBlock] IPv4 CIDR block reserved for Cloud TPU in the VPC.
  /// [useServiceNetworking] Whether to use service networking for Cloud TPU or not.
  const TpuConfigResponse({
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

  factory TpuConfigResponse.fromMap(Map<String, dynamic> map) {
    return TpuConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      ipv4CidrBlock: pulumi.Input.fromValue(map['ipv4CidrBlock'] as String),
      useServiceNetworking: pulumi.Input.fromValue(map['useServiceNetworking'] as bool),
    );
  }
}

