// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_virtual_network_filter.dart';

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_virtual_network_get_zero_trust_tunnel_cloudflared_virtual_network_args_doc}
/// Arguments for getZeroTrustTunnelCloudflaredVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_virtual_network_get_zero_trust_tunnel_cloudflared_virtual_network_args_doc}
class GetZeroTrustTunnelCloudflaredVirtualNetworkArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustTunnelCloudflaredVirtualNetworkFilter?>? filter;
  /// UUID of the virtual network.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredVirtualNetworkArgs].
  /// [accountId] Cloudflare account ID
  /// [filter] Optional.
  /// [virtualNetworkId] UUID of the virtual network.
  const GetZeroTrustTunnelCloudflaredVirtualNetworkArgs({
    this.accountId,
    this.filter,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustTunnelCloudflaredVirtualNetworkFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredVirtualNetworkArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustTunnelCloudflaredVirtualNetworkFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
