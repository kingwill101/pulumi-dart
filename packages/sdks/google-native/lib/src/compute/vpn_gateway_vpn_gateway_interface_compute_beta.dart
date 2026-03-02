// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterfaceComputeBeta {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final pulumi.Input<String>? interconnectAttachment;

  /// Creates a new [VpnGatewayVpnGatewayInterfaceComputeBeta].
  /// [interconnectAttachment] URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  VpnGatewayVpnGatewayInterfaceComputeBeta({
    this.interconnectAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': ?interconnectAttachment,
    };
  }

  factory VpnGatewayVpnGatewayInterfaceComputeBeta.fromMap(Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterfaceComputeBeta(
      interconnectAttachment: map['interconnectAttachment'] == null ? null : (map['interconnectAttachment']! as String).input(),
    );
  }
}

