// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnGatewayConnectionVpnLinkCustomBgpAddress {
  /// The custom bgp ip address which belongs to the IP Configuration.
  final pulumi.Input<String> ipAddress;
  /// The ID of the IP Configuration which belongs to the VPN Gateway.
  final pulumi.Input<String> ipConfigurationId;

  /// Creates a new [VpnGatewayConnectionVpnLinkCustomBgpAddress].
  /// [ipAddress] The custom bgp ip address which belongs to the IP Configuration.
  /// [ipConfigurationId] The ID of the IP Configuration which belongs to the VPN Gateway.
  VpnGatewayConnectionVpnLinkCustomBgpAddress({
    required this.ipAddress,
    required this.ipConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipConfigurationId': ipConfigurationId,
    };
  }

  factory VpnGatewayConnectionVpnLinkCustomBgpAddress.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionVpnLinkCustomBgpAddress(
      ipAddress: (map['ipAddress'] as String).input(),
      ipConfigurationId: (map['ipConfigurationId'] as String).input(),
    );
  }
}

