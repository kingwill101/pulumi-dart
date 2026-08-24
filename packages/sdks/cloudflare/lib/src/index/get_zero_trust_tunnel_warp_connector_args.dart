// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_warp_connector_filter.dart';

/// {@template pulumi_index_get_zero_trust_tunnel_warp_connector_get_zero_trust_tunnel_warp_connector_args_doc}
/// Arguments for getZeroTrustTunnelWarpConnector.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_warp_connector_get_zero_trust_tunnel_warp_connector_args_doc}
class GetZeroTrustTunnelWarpConnectorArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustTunnelWarpConnectorFilter?>? filter;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorArgs].
  /// [accountId] Cloudflare account ID
  /// [filter] Optional.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelWarpConnectorArgs({
    this.accountId,
    this.filter,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustTunnelWarpConnectorFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustTunnelWarpConnectorFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
