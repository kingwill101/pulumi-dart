// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterface {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final pulumi.Input<String>? interconnectAttachment;

  /// Creates a new [VpnGatewayVpnGatewayInterface].
  /// [interconnectAttachment] URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  VpnGatewayVpnGatewayInterface({
    this.interconnectAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': ?interconnectAttachment,
    };
  }

  factory VpnGatewayVpnGatewayInterface.fromMap(Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterface(
      interconnectAttachment: (() { final guardedValue = map['interconnectAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

