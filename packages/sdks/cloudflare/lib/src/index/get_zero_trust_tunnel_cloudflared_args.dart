// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_filter.dart';

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_get_zero_trust_tunnel_cloudflared_args_doc}
/// Arguments for getZeroTrustTunnelCloudflared.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_get_zero_trust_tunnel_cloudflared_args_doc}
class GetZeroTrustTunnelCloudflaredArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustTunnelCloudflaredFilter?>? filter;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredArgs].
  /// [accountId] Cloudflare account ID
  /// [filter] Optional.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelCloudflaredArgs({
    this.accountId,
    this.filter,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustTunnelCloudflaredFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustTunnelCloudflaredFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
