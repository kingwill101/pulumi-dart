// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The interface for the external VPN gateway.
class ExternalVpnGatewayInterfaceResponse {
  /// IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  final pulumi.Input<String> ipAddress;
  /// IPv6 address of the interface in the external VPN gateway. This IPv6 address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine. Must specify an IPv6 address (not IPV4-mapped) using any format described in RFC 4291 (e.g. 2001:db8:0:0:2d9:51:0:0). The output format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  final pulumi.Input<String> ipv6Address;

  /// Creates a new [ExternalVpnGatewayInterfaceResponse].
  /// [ipAddress] IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  /// [ipv6Address] IPv6 address of the interface in the external VPN gateway. This IPv6 address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine. Must specify an IPv6 address (not IPV4-mapped) using any format described in RFC 4291 (e.g. 2001:db8:0:0:2d9:51:0:0). The output format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  ExternalVpnGatewayInterfaceResponse({
    required this.ipAddress,
    required this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipv6Address': ipv6Address,
    };
  }

  factory ExternalVpnGatewayInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayInterfaceResponse(
      ipAddress: (map['ipAddress'] as String).input(),
      ipv6Address: (map['ipv6Address'] as String).input(),
    );
  }
}

