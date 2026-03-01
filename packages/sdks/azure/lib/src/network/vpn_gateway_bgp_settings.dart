// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_gateway_bgp_settings_instance0_bgp_peering_address.dart';
import 'vpn_gateway_bgp_settings_instance1_bgp_peering_address.dart';

class VpnGatewayBgpSettings {
  /// The ASN of the BGP Speaker. Changing this forces a new resource to be created.
  final int asn;
  /// The Address which should be used for the BGP Peering.
  final String? bgpPeeringAddress;
  /// An `instance_bgp_peering_address` block as defined below.
  final VpnGatewayBgpSettingsInstance0BgpPeeringAddress? instance0BgpPeeringAddress;
  /// An `instance_bgp_peering_address` block as defined below.
  final VpnGatewayBgpSettingsInstance1BgpPeeringAddress? instance1BgpPeeringAddress;
  /// The weight added to Routes learned from this BGP Speaker. Changing this forces a new resource to be created.
  final int peerWeight;

  /// Creates a new [VpnGatewayBgpSettings].
  /// [asn] The ASN of the BGP Speaker. Changing this forces a new resource to be created.
  /// [bgpPeeringAddress] The Address which should be used for the BGP Peering.
  /// [instance0BgpPeeringAddress] An `instance_bgp_peering_address` block as defined below.
  /// [instance1BgpPeeringAddress] An `instance_bgp_peering_address` block as defined below.
  /// [peerWeight] The weight added to Routes learned from this BGP Speaker. Changing this forces a new resource to be created.
  VpnGatewayBgpSettings({
    required this.asn,
    this.bgpPeeringAddress,
    this.instance0BgpPeeringAddress,
    this.instance1BgpPeeringAddress,
    required this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'bgpPeeringAddress': ?bgpPeeringAddress,
      'instance0BgpPeeringAddress': ?instance0BgpPeeringAddress == null ? null : instance0BgpPeeringAddress!.toMap(),
      'instance1BgpPeeringAddress': ?instance1BgpPeeringAddress == null ? null : instance1BgpPeeringAddress!.toMap(),
      'peerWeight': peerWeight,
    };
  }

  factory VpnGatewayBgpSettings.fromMap(Map<String, dynamic> map) {
    return VpnGatewayBgpSettings(
      asn: map['asn'] as int,
      bgpPeeringAddress: map['bgpPeeringAddress'] == null ? null : map['bgpPeeringAddress'] as String,
      instance0BgpPeeringAddress: map['instance0BgpPeeringAddress'] == null ? null : VpnGatewayBgpSettingsInstance0BgpPeeringAddress.fromMap((map['instance0BgpPeeringAddress'] as Map).cast<String, dynamic>()),
      instance1BgpPeeringAddress: map['instance1BgpPeeringAddress'] == null ? null : VpnGatewayBgpSettingsInstance1BgpPeeringAddress.fromMap((map['instance1BgpPeeringAddress'] as Map).cast<String, dynamic>()),
      peerWeight: map['peerWeight'] as int,
    );
  }
}

