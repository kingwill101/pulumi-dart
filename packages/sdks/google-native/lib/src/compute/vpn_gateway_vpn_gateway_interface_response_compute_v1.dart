// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterfaceResponseComputeV1 {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final pulumi.Input<String> interconnectAttachment;
  /// IP address for this VPN interface associated with the VPN gateway. The IP address could be either a regional external IP address or a regional internal IP address. The two IP addresses for a VPN gateway must be all regional external or regional internal IP addresses. There cannot be a mix of regional external IP addresses and regional internal IP addresses. For HA VPN over Cloud Interconnect, the IP addresses for both interfaces could either be regional internal IP addresses or regional external IP addresses. For regular (non HA VPN over Cloud Interconnect) HA VPN tunnels, the IP address must be a regional external IP address.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [VpnGatewayVpnGatewayInterfaceResponseComputeV1].
  /// [interconnectAttachment] URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  /// [ipAddress] IP address for this VPN interface associated with the VPN gateway. The IP address could be either a regional external IP address or a regional internal IP address. The two IP addresses for a VPN gateway must be all regional external or regional internal IP addresses. There cannot be a mix of regional external IP addresses and regional internal IP addresses. For HA VPN over Cloud Interconnect, the IP addresses for both interfaces could either be regional internal IP addresses or regional external IP addresses. For regular (non HA VPN over Cloud Interconnect) HA VPN tunnels, the IP address must be a regional external IP address.
  const VpnGatewayVpnGatewayInterfaceResponseComputeV1({
    required this.interconnectAttachment,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': interconnectAttachment,
      'ipAddress': ipAddress,
    };
  }

  factory VpnGatewayVpnGatewayInterfaceResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterfaceResponseComputeV1(
      interconnectAttachment: pulumi.Input.fromValue(map['interconnectAttachment'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}
