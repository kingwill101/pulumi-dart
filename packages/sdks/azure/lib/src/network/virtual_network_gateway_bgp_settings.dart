// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_bgp_settings_peering_address.dart';

class VirtualNetworkGatewayBgpSettings {
  /// The Autonomous System Number (ASN) to use as part of the BGP.
  final pulumi.Input<int>? asn;
  /// The weight added to routes which have been learned through BGP peering. Valid values can be between `0` and `100`.
  final pulumi.Input<int>? peerWeight;
  /// A list of `peeringAddresses` blocks as defined below. Only one `peeringAddresses` block can be specified except when `activeActive` of this Virtual Network Gateway is `true`.
  final pulumi.Input<List<VirtualNetworkGatewayBgpSettingsPeeringAddress>>? peeringAddresses;

  /// Creates a new [VirtualNetworkGatewayBgpSettings].
  /// [asn] The Autonomous System Number (ASN) to use as part of the BGP.
  /// [peerWeight] The weight added to routes which have been learned through BGP peering. Valid values can be between `0` and `100`.
  /// [peeringAddresses] A list of `peeringAddresses` blocks as defined below. Only one `peeringAddresses` block can be specified except when `activeActive` of this Virtual Network Gateway is `true`.
  const VirtualNetworkGatewayBgpSettings({
    this.asn,
    this.peerWeight,
    this.peeringAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'peerWeight': ?peerWeight,
      'peeringAddresses': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayBgpSettingsPeeringAddress>, List<Map<String, dynamic>>>(peeringAddresses, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayBgpSettingsPeeringAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworkGatewayBgpSettings.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayBgpSettings(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerWeight: (() { final guardedValue = map['peerWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peeringAddresses: (() { final guardedValue = map['peeringAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayBgpSettingsPeeringAddress>(guardedValue, (value) => VirtualNetworkGatewayBgpSettingsPeeringAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
