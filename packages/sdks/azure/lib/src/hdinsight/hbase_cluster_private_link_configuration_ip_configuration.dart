// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HBaseClusterPrivateLinkConfigurationIpConfiguration {
  /// The name of the IP configuration.
  final pulumi.Input<String> name;
  /// Indicates whether this IP configuration is primary.
  final pulumi.Input<bool>? primary;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// The private IP allocation method. Possible values are `Dynamic` and `Static`.
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// The ID of the Subnet within the Virtual Network where the IP configuration should be provisioned.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [HBaseClusterPrivateLinkConfigurationIpConfiguration].
  /// [name] The name of the IP configuration.
  /// [primary] Indicates whether this IP configuration is primary.
  /// [privateIpAddress] The private IP address of the IP configuration.
  /// [privateIpAllocationMethod] The private IP allocation method. Possible values are `Dynamic` and `Static`.
  /// [subnetId] The ID of the Subnet within the Virtual Network where the IP configuration should be provisioned.
  const HBaseClusterPrivateLinkConfigurationIpConfiguration({
    required this.name,
    this.primary,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnetId': ?subnetId,
    };
  }

  factory HBaseClusterPrivateLinkConfigurationIpConfiguration.fromMap(Map<String, dynamic> map) {
    return HBaseClusterPrivateLinkConfigurationIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAllocationMethod: (() { final guardedValue = map['privateIpAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
