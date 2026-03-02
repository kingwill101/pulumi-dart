// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_detail_cloud_router.dart';
import 'vpn_connection_detail_cloud_vpn.dart';

class VpnConnectionDetail {
  /// (Output)
  /// The Cloud Router info.
  /// Structure is documented below.
  final pulumi.Input<List<VpnConnectionDetailCloudRouter>>? cloudRouters;
  /// (Output)
  /// Each connection has multiple Cloud VPN gateways.
  /// Structure is documented below.
  final pulumi.Input<List<VpnConnectionDetailCloudVpn>>? cloudVpns;
  /// (Output)
  /// The error message. This is only populated when state=ERROR.
  final pulumi.Input<String>? error;
  /// (Output)
  /// The current connection state.
  final pulumi.Input<String>? state;

  /// Creates a new [VpnConnectionDetail].
  /// [cloudRouters] (Output)
  /// [cloudVpns] (Output)
  /// [error] (Output)
  /// [state] (Output)
  VpnConnectionDetail({
    this.cloudRouters,
    this.cloudVpns,
    this.error,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRouters': ?pulumi.Input.mapOptionalInputValue<List<VpnConnectionDetailCloudRouter>, List<Map<String, dynamic>>>(cloudRouters, (value) => pulumi.Input.encodeList<VpnConnectionDetailCloudRouter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudVpns': ?pulumi.Input.mapOptionalInputValue<List<VpnConnectionDetailCloudVpn>, List<Map<String, dynamic>>>(cloudVpns, (value) => pulumi.Input.encodeList<VpnConnectionDetailCloudVpn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'error': ?error,
      'state': ?state,
    };
  }

  factory VpnConnectionDetail.fromMap(Map<String, dynamic> map) {
    return VpnConnectionDetail(
      cloudRouters: map['cloudRouters'] == null ? null : (pulumi.Input.decodeList<VpnConnectionDetailCloudRouter>(map['cloudRouters']!, (value) => VpnConnectionDetailCloudRouter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudVpns: map['cloudVpns'] == null ? null : (pulumi.Input.decodeList<VpnConnectionDetailCloudVpn>(map['cloudVpns']!, (value) => VpnConnectionDetailCloudVpn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      error: map['error'] == null ? null : (map['error']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

