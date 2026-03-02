// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HaVpnGatewayVpnInterface {
  /// The numeric ID of this VPN gateway interface.
  final pulumi.Input<int>? id;
  /// URL of the interconnect attachment resource. When the value
  /// of this field is present, the VPN Gateway will be used for
  /// IPsec-encrypted Cloud Interconnect; all Egress or Ingress
  /// traffic for this VPN Gateway interface will go through the
  /// specified interconnect attachment resource.
  /// Not currently available publicly.
  final pulumi.Input<String>? interconnectAttachment;
  /// (Output)
  /// The external IP address for this VPN gateway interface.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [HaVpnGatewayVpnInterface].
  /// [id] The numeric ID of this VPN gateway interface.
  /// [interconnectAttachment] URL of the interconnect attachment resource. When the value
  /// [ipAddress] (Output)
  HaVpnGatewayVpnInterface({
    this.id,
    this.interconnectAttachment,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'interconnectAttachment': ?interconnectAttachment,
      'ipAddress': ?ipAddress,
    };
  }

  factory HaVpnGatewayVpnInterface.fromMap(Map<String, dynamic> map) {
    return HaVpnGatewayVpnInterface(
      id: map['id'] == null ? null : (map['id'] as int).input(),
      interconnectAttachment: map['interconnectAttachment'] == null ? null : (map['interconnectAttachment'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
    );
  }
}

