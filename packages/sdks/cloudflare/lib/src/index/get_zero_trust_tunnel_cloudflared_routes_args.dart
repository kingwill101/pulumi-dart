// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_routes_get_zero_trust_tunnel_cloudflared_routes_args_doc}
/// Arguments for getZeroTrustTunnelCloudflaredRoutes.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_routes_get_zero_trust_tunnel_cloudflared_routes_args_doc}
class GetZeroTrustTunnelCloudflaredRoutesArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// Optional remark describing the route.
  final pulumi.Input<String?>? comment;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final pulumi.Input<String?>? existedAt;
  /// If `true`, only include deleted routes. If `false`, exclude deleted routes. If empty, all routes will be included.
  final pulumi.Input<bool?>? isDeleted;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// If set, only list routes that are contained within this IP range.
  final pulumi.Input<String?>? networkSubset;
  /// If set, only list routes that contain this IP range.
  final pulumi.Input<String?>? networkSuperset;
  /// UUID of the route.
  final pulumi.Input<String?>? routeId;
  /// The types of tunnels to filter by, separated by commas.
  final pulumi.Input<List<String>?>? tunTypes;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;
  /// UUID of the virtual network.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredRoutesArgs].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the route.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [isDeleted] If `true`, only include deleted routes. If `false`, exclude deleted routes. If empty, all routes will be included.
  /// [maxItems] Max items to fetch, default: 1000
  /// [networkSubset] If set, only list routes that are contained within this IP range.
  /// [networkSuperset] If set, only list routes that contain this IP range.
  /// [routeId] UUID of the route.
  /// [tunTypes] The types of tunnels to filter by, separated by commas.
  /// [tunnelId] UUID of the tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  const GetZeroTrustTunnelCloudflaredRoutesArgs({
    this.accountId,
    this.comment,
    this.existedAt,
    this.isDeleted,
    this.maxItems,
    this.networkSubset,
    this.networkSuperset,
    this.routeId,
    this.tunTypes,
    this.tunnelId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'existedAt': ?existedAt,
      'isDeleted': ?isDeleted,
      'maxItems': ?maxItems,
      'networkSubset': ?networkSubset,
      'networkSuperset': ?networkSuperset,
      'routeId': ?routeId,
      'tunTypes': ?tunTypes,
      'tunnelId': ?tunnelId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredRoutesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      networkSubset: (() { final guardedValue = map['networkSubset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSuperset: (() { final guardedValue = map['networkSuperset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunTypes: (() { final guardedValue = map['tunTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
