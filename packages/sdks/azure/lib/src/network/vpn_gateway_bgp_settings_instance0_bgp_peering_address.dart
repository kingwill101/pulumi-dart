// ignore_for_file: unused_element, unnecessary_cast


class VpnGatewayBgpSettingsInstance0BgpPeeringAddress {
  /// A list of custom BGP peering addresses to assign to this instance.
  final List<String> customIps;
  /// The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration.
  final List<String>? defaultIps;
  /// The pre-defined id of VPN Gateway IP Configuration.
  final String? ipConfigurationId;
  /// The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration.
  final List<String>? tunnelIps;

  /// Creates a new [VpnGatewayBgpSettingsInstance0BgpPeeringAddress].
  /// [customIps] A list of custom BGP peering addresses to assign to this instance.
  /// [defaultIps] The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration.
  /// [ipConfigurationId] The pre-defined id of VPN Gateway IP Configuration.
  /// [tunnelIps] The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration.
  VpnGatewayBgpSettingsInstance0BgpPeeringAddress({
    required this.customIps,
    this.defaultIps,
    this.ipConfigurationId,
    this.tunnelIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIps': customIps,
      'defaultIps': ?defaultIps,
      'ipConfigurationId': ?ipConfigurationId,
      'tunnelIps': ?tunnelIps,
    };
  }

  factory VpnGatewayBgpSettingsInstance0BgpPeeringAddress.fromMap(Map<String, dynamic> map) {
    return VpnGatewayBgpSettingsInstance0BgpPeeringAddress(
      customIps: (map['customIps'] as List).cast<String>(),
      defaultIps: map['defaultIps'] == null ? null : (map['defaultIps'] as List).cast<String>(),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : map['ipConfigurationId'] as String,
      tunnelIps: map['tunnelIps'] == null ? null : (map['tunnelIps'] as List).cast<String>(),
    );
  }
}

