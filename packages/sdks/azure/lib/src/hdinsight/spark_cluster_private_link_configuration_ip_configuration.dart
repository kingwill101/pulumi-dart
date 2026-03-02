// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterPrivateLinkConfigurationIpConfiguration {
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

  /// Creates a new [SparkClusterPrivateLinkConfigurationIpConfiguration].
  /// [name] The name of the IP configuration.
  /// [primary] Indicates whether this IP configuration is primary.
  /// [privateIpAddress] The private IP address of the IP configuration.
  /// [privateIpAllocationMethod] The private IP allocation method. Possible values are `Dynamic` and `Static`.
  /// [subnetId] The ID of the Subnet within the Virtual Network where the IP configuration should be provisioned.
  SparkClusterPrivateLinkConfigurationIpConfiguration({
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

  factory SparkClusterPrivateLinkConfigurationIpConfiguration.fromMap(Map<String, dynamic> map) {
    return SparkClusterPrivateLinkConfigurationIpConfiguration(
      name: (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : (map['privateIpAllocationMethod']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

