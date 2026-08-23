// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterfaceResponseComputeBeta {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final pulumi.Input<String> interconnectAttachment;
  /// IP address for this VPN interface associated with the VPN gateway. The IP address could be either a regional external IP address or a regional internal IP address. The two IP addresses for a VPN gateway must be all regional external or regional internal IP addresses. There cannot be a mix of regional external IP addresses and regional internal IP addresses. For HA VPN over Cloud Interconnect, the IP addresses for both interfaces could either be regional internal IP addresses or regional external IP addresses. For regular (non HA VPN over Cloud Interconnect) HA VPN tunnels, the IP address must be a regional external IP address.
  final pulumi.Input<String> ipAddress;
  /// IPv6 address for this VPN interface associated with the VPN gateway. The IPv6 address must be a regional external IPv6 address. The format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  final pulumi.Input<String> ipv6Address;

  /// Creates a new [VpnGatewayVpnGatewayInterfaceResponseComputeBeta].
  /// [interconnectAttachment] URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  /// [ipAddress] IP address for this VPN interface associated with the VPN gateway. The IP address could be either a regional external IP address or a regional internal IP address. The two IP addresses for a VPN gateway must be all regional external or regional internal IP addresses. There cannot be a mix of regional external IP addresses and regional internal IP addresses. For HA VPN over Cloud Interconnect, the IP addresses for both interfaces could either be regional internal IP addresses or regional external IP addresses. For regular (non HA VPN over Cloud Interconnect) HA VPN tunnels, the IP address must be a regional external IP address.
  /// [ipv6Address] IPv6 address for this VPN interface associated with the VPN gateway. The IPv6 address must be a regional external IPv6 address. The format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  const VpnGatewayVpnGatewayInterfaceResponseComputeBeta({
    required this.interconnectAttachment,
    required this.ipAddress,
    required this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': interconnectAttachment,
      'ipAddress': ipAddress,
      'ipv6Address': ipv6Address,
    };
  }

  factory VpnGatewayVpnGatewayInterfaceResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterfaceResponseComputeBeta(
      interconnectAttachment: pulumi.Input.fromValue(map['interconnectAttachment'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
    );
  }
}
