// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_detail_cloud_router.dart';
import 'vpn_connection_detail_cloud_vpn.dart';

class VpnConnectionDetail {
  /// (Output)
  /// The Cloud Router info.
  /// Structure is documented below.
  final pulumi.Input<List<VpnConnectionDetailCloudRouter>?>? cloudRouters;
  /// (Output)
  /// Each connection has multiple Cloud VPN gateways.
  /// Structure is documented below.
  final pulumi.Input<List<VpnConnectionDetailCloudVpn>?>? cloudVpns;
  /// (Output)
  /// The error message. This is only populated when state=ERROR.
  final pulumi.Input<String?>? error;
  /// (Output)
  /// The current connection state.
  final pulumi.Input<String?>? state;

  /// Creates a new [VpnConnectionDetail].
  /// [cloudRouters] (Output)
  /// [cloudVpns] (Output)
  /// [error] (Output)
  /// [state] (Output)
  const VpnConnectionDetail({
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
      cloudRouters: (() { final guardedValue = map['cloudRouters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnConnectionDetailCloudRouter>(guardedValue, (value) => VpnConnectionDetailCloudRouter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudVpns: (() { final guardedValue = map['cloudVpns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnConnectionDetailCloudVpn>(guardedValue, (value) => VpnConnectionDetailCloudVpn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
