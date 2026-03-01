// ignore_for_file: unused_element, unnecessary_cast


class HBaseClusterPrivateLinkConfigurationIpConfiguration {
  /// The name of the IP configuration.
  final String name;
  /// Indicates whether this IP configuration is primary.
  final bool? primary;
  /// The private IP address of the IP configuration.
  final String? privateIpAddress;
  /// The private IP allocation method. Possible values are `Dynamic` and `Static`.
  final String? privateIpAllocationMethod;
  /// The ID of the Subnet within the Virtual Network where the IP configuration should be provisioned.
  final String? subnetId;

  /// Creates a new [HBaseClusterPrivateLinkConfigurationIpConfiguration].
  /// [name] The name of the IP configuration.
  /// [primary] Indicates whether this IP configuration is primary.
  /// [privateIpAddress] The private IP address of the IP configuration.
  /// [privateIpAllocationMethod] The private IP allocation method. Possible values are `Dynamic` and `Static`.
  /// [subnetId] The ID of the Subnet within the Virtual Network where the IP configuration should be provisioned.
  HBaseClusterPrivateLinkConfigurationIpConfiguration({
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
      name: map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : map['privateIpAllocationMethod'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

