// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocalNetworkGatewayBgpSettings {
  /// The BGP speaker's ASN.
  final pulumi.Input<int> asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final pulumi.Input<String> bgpPeeringAddress;
  /// The weight added to routes learned from this BGP speaker.
  final pulumi.Input<int?>? peerWeight;

  /// Creates a new [LocalNetworkGatewayBgpSettings].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  /// [peerWeight] The weight added to routes learned from this BGP speaker.
  const LocalNetworkGatewayBgpSettings({
    required this.asn,
    required this.bgpPeeringAddress,
    this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'bgpPeeringAddress': bgpPeeringAddress,
      'peerWeight': ?peerWeight,
    };
  }

  factory LocalNetworkGatewayBgpSettings.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGatewayBgpSettings(
      asn: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['asn'])),
      bgpPeeringAddress: pulumi.Input.fromValue(map['bgpPeeringAddress'] as String),
      peerWeight: (() { final guardedValue = map['peerWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
