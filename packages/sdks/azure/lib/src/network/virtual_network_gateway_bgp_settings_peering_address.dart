// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayBgpSettingsPeeringAddress {
  /// A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.
  ///
  /// > **Note:** The valid range for the reserved APIPA address in Azure Public is from `169.254.21.0` to `169.254.22.255`.
  final List<String>? apipaAddresses;
  /// A list of peering address assigned to the BGP peer of the Virtual Network Gateway.
  final List<String>? defaultAddresses;
  /// The name of the IP configuration of this Virtual Network Gateway. In case there are multiple `ip_configuration` blocks defined, this property is **required** to specify.
  final String? ipConfigurationName;
  /// A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway.
  final List<String>? tunnelIpAddresses;

  /// Creates a new [VirtualNetworkGatewayBgpSettingsPeeringAddress].
  /// [apipaAddresses] A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.
  /// [defaultAddresses] A list of peering address assigned to the BGP peer of the Virtual Network Gateway.
  /// [ipConfigurationName] The name of the IP configuration of this Virtual Network Gateway. In case there are multiple `ip_configuration` blocks defined, this property is **required** to specify.
  /// [tunnelIpAddresses] A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway.
  VirtualNetworkGatewayBgpSettingsPeeringAddress({
    this.apipaAddresses,
    this.defaultAddresses,
    this.ipConfigurationName,
    this.tunnelIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apipaAddresses': ?apipaAddresses,
      'defaultAddresses': ?defaultAddresses,
      'ipConfigurationName': ?ipConfigurationName,
      'tunnelIpAddresses': ?tunnelIpAddresses,
    };
  }

  factory VirtualNetworkGatewayBgpSettingsPeeringAddress.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayBgpSettingsPeeringAddress(
      apipaAddresses: map['apipaAddresses'] == null ? null : (map['apipaAddresses'] as List).cast<String>(),
      defaultAddresses: map['defaultAddresses'] == null ? null : (map['defaultAddresses'] as List).cast<String>(),
      ipConfigurationName: map['ipConfigurationName'] == null ? null : map['ipConfigurationName'] as String,
      tunnelIpAddresses: map['tunnelIpAddresses'] == null ? null : (map['tunnelIpAddresses'] as List).cast<String>(),
    );
  }
}

