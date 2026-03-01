// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayPrivateLinkConfigurationIpConfiguration {
  /// The name of this Application Gateway.
  final String name;
  /// Is this the Primary IP Configuration?
  final bool primary;
  /// The Static IP Address which is used.
  final String privateIpAddress;
  /// The allocation method used for the Private IP Address.
  final String privateIpAddressAllocation;
  /// The ID of the subnet the private link configuration is connected to.
  final String subnetId;

  /// Creates a new [GetApplicationGatewayPrivateLinkConfigurationIpConfiguration].
  /// [name] The name of this Application Gateway.
  /// [primary] Is this the Primary IP Configuration?
  /// [privateIpAddress] The Static IP Address which is used.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address.
  /// [subnetId] The ID of the subnet the private link configuration is connected to.
  GetApplicationGatewayPrivateLinkConfigurationIpConfiguration({
    required this.name,
    required this.primary,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': primary,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'subnetId': subnetId,
    };
  }

  factory GetApplicationGatewayPrivateLinkConfigurationIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayPrivateLinkConfigurationIpConfiguration(
      name: map['name'] as String,
      primary: map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddressAllocation: map['privateIpAddressAllocation'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

