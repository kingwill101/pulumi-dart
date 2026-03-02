// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterfaceComputeV1 {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final pulumi.Input<String>? interconnectAttachment;

  /// Creates a new [VpnGatewayVpnGatewayInterfaceComputeV1].
  /// [interconnectAttachment] URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  VpnGatewayVpnGatewayInterfaceComputeV1({
    this.interconnectAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': ?interconnectAttachment,
    };
  }

  factory VpnGatewayVpnGatewayInterfaceComputeV1.fromMap(Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterfaceComputeV1(
      interconnectAttachment: map['interconnectAttachment'] == null ? null : (map['interconnectAttachment'] as String).input(),
    );
  }
}

