// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_bgp_settings_instance0_bgp_peering_address.dart';
import 'vpn_gateway_bgp_settings_instance1_bgp_peering_address.dart';

class VpnGatewayBgpSettings {
  /// The ASN of the BGP Speaker. Changing this forces a new resource to be created.
  final pulumi.Input<int> asn;
  /// The Address which should be used for the BGP Peering.
  final pulumi.Input<String>? bgpPeeringAddress;
  /// An `instance_bgp_peering_address` block as defined below.
  final pulumi.Input<VpnGatewayBgpSettingsInstance0BgpPeeringAddress>? instance0BgpPeeringAddress;
  /// An `instance_bgp_peering_address` block as defined below.
  final pulumi.Input<VpnGatewayBgpSettingsInstance1BgpPeeringAddress>? instance1BgpPeeringAddress;
  /// The weight added to Routes learned from this BGP Speaker. Changing this forces a new resource to be created.
  final pulumi.Input<int> peerWeight;

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
      'instance0BgpPeeringAddress': ?pulumi.Input.mapOptionalInputValue<VpnGatewayBgpSettingsInstance0BgpPeeringAddress, Map<String, dynamic>>(instance0BgpPeeringAddress, (value) => value.toMap()),
      'instance1BgpPeeringAddress': ?pulumi.Input.mapOptionalInputValue<VpnGatewayBgpSettingsInstance1BgpPeeringAddress, Map<String, dynamic>>(instance1BgpPeeringAddress, (value) => value.toMap()),
      'peerWeight': peerWeight,
    };
  }

  factory VpnGatewayBgpSettings.fromMap(Map<String, dynamic> map) {
    return VpnGatewayBgpSettings(
      asn: (map['asn'] as int).input(),
      bgpPeeringAddress: map['bgpPeeringAddress'] == null ? null : (map['bgpPeeringAddress'] as String).input(),
      instance0BgpPeeringAddress: map['instance0BgpPeeringAddress'] == null ? null : (VpnGatewayBgpSettingsInstance0BgpPeeringAddress.fromMap((map['instance0BgpPeeringAddress'] as Map).cast<String, dynamic>())).input(),
      instance1BgpPeeringAddress: map['instance1BgpPeeringAddress'] == null ? null : (VpnGatewayBgpSettingsInstance1BgpPeeringAddress.fromMap((map['instance1BgpPeeringAddress'] as Map).cast<String, dynamic>())).input(),
      peerWeight: (map['peerWeight'] as int).input(),
    );
  }
}

