// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_bgp_setting_instance0_bgp_peering_address.dart';
import 'get_vpn_gateway_bgp_setting_instance1_bgp_peering_address.dart';

class GetVpnGatewayBgpSetting {
  /// The ASN of the BGP Speaker.
  final pulumi.Input<int> asn;
  /// The Address which should be used for the BGP Peering.
  final pulumi.Input<String> bgpPeeringAddress;
  /// an `instance_bgp_peering_address` block as defined below.
  final pulumi.Input<List<GetVpnGatewayBgpSettingInstance0BgpPeeringAddress>> instance0BgpPeeringAddresses;
  /// an `instance_bgp_peering_address` block as defined below.
  final pulumi.Input<List<GetVpnGatewayBgpSettingInstance1BgpPeeringAddress>> instance1BgpPeeringAddresses;
  /// The weight added to Routes learned from this BGP Speaker.
  final pulumi.Input<int> peerWeight;

  /// Creates a new [GetVpnGatewayBgpSetting].
  /// [asn] The ASN of the BGP Speaker.
  /// [bgpPeeringAddress] The Address which should be used for the BGP Peering.
  /// [instance0BgpPeeringAddresses] an `instance_bgp_peering_address` block as defined below.
  /// [instance1BgpPeeringAddresses] an `instance_bgp_peering_address` block as defined below.
  /// [peerWeight] The weight added to Routes learned from this BGP Speaker.
  GetVpnGatewayBgpSetting({
    required this.asn,
    required this.bgpPeeringAddress,
    required this.instance0BgpPeeringAddresses,
    required this.instance1BgpPeeringAddresses,
    required this.peerWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'bgpPeeringAddress': bgpPeeringAddress,
      'instance0BgpPeeringAddresses': pulumi.Input.mapInputValue<List<GetVpnGatewayBgpSettingInstance0BgpPeeringAddress>, List<Map<String, dynamic>>>(instance0BgpPeeringAddresses, (value) => pulumi.Input.encodeList<GetVpnGatewayBgpSettingInstance0BgpPeeringAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance1BgpPeeringAddresses': pulumi.Input.mapInputValue<List<GetVpnGatewayBgpSettingInstance1BgpPeeringAddress>, List<Map<String, dynamic>>>(instance1BgpPeeringAddresses, (value) => pulumi.Input.encodeList<GetVpnGatewayBgpSettingInstance1BgpPeeringAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerWeight': peerWeight,
    };
  }

  factory GetVpnGatewayBgpSetting.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayBgpSetting(
      asn: (map['asn'] as int).input(),
      bgpPeeringAddress: (map['bgpPeeringAddress'] as String).input(),
      instance0BgpPeeringAddresses: (pulumi.Input.decodeList<GetVpnGatewayBgpSettingInstance0BgpPeeringAddress>(map['instance0BgpPeeringAddresses'], (value) => GetVpnGatewayBgpSettingInstance0BgpPeeringAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instance1BgpPeeringAddresses: (pulumi.Input.decodeList<GetVpnGatewayBgpSettingInstance1BgpPeeringAddress>(map['instance1BgpPeeringAddresses'], (value) => GetVpnGatewayBgpSettingInstance1BgpPeeringAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      peerWeight: (map['peerWeight'] as int).input(),
    );
  }
}

