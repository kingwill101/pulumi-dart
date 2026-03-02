// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkGatewayBgpSetting {
  /// The Autonomous System Number (ASN) to use as part of the BGP.
  final pulumi.Input<int> asn;
  /// The weight added to routes which have been learned
  /// through BGP peering.
  final pulumi.Input<int> peerWeight;
  /// The BGP peer IP address of the virtual network
  /// gateway. This address is needed to configure the created gateway as a BGP Peer
  /// on the on-premises VPN devices.
  final pulumi.Input<String> peeringAddress;

  /// Creates a new [GetVirtualNetworkGatewayBgpSetting].
  /// [asn] The Autonomous System Number (ASN) to use as part of the BGP.
  /// [peerWeight] The weight added to routes which have been learned
  /// [peeringAddress] The BGP peer IP address of the virtual network
  GetVirtualNetworkGatewayBgpSetting({
    required this.asn,
    required this.peerWeight,
    required this.peeringAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'peerWeight': peerWeight,
      'peeringAddress': peeringAddress,
    };
  }

  factory GetVirtualNetworkGatewayBgpSetting.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayBgpSetting(
      asn: (map['asn'] as int).input(),
      peerWeight: (map['peerWeight'] as int).input(),
      peeringAddress: (map['peeringAddress'] as String).input(),
    );
  }
}

