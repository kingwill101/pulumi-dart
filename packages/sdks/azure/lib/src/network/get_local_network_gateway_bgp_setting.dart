// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLocalNetworkGatewayBgpSetting {
  /// The BGP speaker's ASN.
  final pulumi.Input<int> asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final pulumi.Input<String> bgpPeeringAddress;
  /// The weight added to routes learned from this BGP speaker.
  final pulumi.Input<int> peerWeight;

  /// Creates a new [GetLocalNetworkGatewayBgpSetting].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  /// [peerWeight] The weight added to routes learned from this BGP speaker.
  GetLocalNetworkGatewayBgpSetting({
    required this.asn,
    required this.bgpPeeringAddress,
    required this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'bgpPeeringAddress': bgpPeeringAddress,
      'peerWeight': peerWeight,
    };
  }

  factory GetLocalNetworkGatewayBgpSetting.fromMap(Map<String, dynamic> map) {
    return GetLocalNetworkGatewayBgpSetting(
      asn: pulumi.Input.fromValue(map['asn'] as int),
      bgpPeeringAddress: pulumi.Input.fromValue(map['bgpPeeringAddress'] as String),
      peerWeight: pulumi.Input.fromValue(map['peerWeight'] as int),
    );
  }
}

