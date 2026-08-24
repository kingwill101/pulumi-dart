// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_routes_result.dart';

/// Result data returned by getZeroTrustTunnelCloudflaredRoutes.
class GetZeroTrustTunnelCloudflaredRoutesInvokeResult {
  /// Cloudflare account ID
  final String? accountId;
  /// Optional remark describing the route.
  final String? comment;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final String? existedAt;
  /// If `true`, only include deleted routes. If `false`, exclude deleted routes. If empty, all routes will be included.
  final bool? isDeleted;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// If set, only list routes that are contained within this IP range.
  final String? networkSubset;
  /// If set, only list routes that contain this IP range.
  final String? networkSuperset;
  /// The items returned by the data source
  final List<GetZeroTrustTunnelCloudflaredRoutesResult>? results;
  /// UUID of the route.
  final String? routeId;
  /// The types of tunnels to filter by, separated by commas.
  final List<String>? tunTypes;
  /// UUID of the tunnel.
  final String? tunnelId;
  /// UUID of the virtual network.
  final String? virtualNetworkId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredRoutesInvokeResult].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the route.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [isDeleted] If `true`, only include deleted routes. If `false`, exclude deleted routes. If empty, all routes will be included.
  /// [maxItems] Max items to fetch, default: 1000
  /// [networkSubset] If set, only list routes that are contained within this IP range.
  /// [networkSuperset] If set, only list routes that contain this IP range.
  /// [results] The items returned by the data source
  /// [routeId] UUID of the route.
  /// [tunTypes] The types of tunnels to filter by, separated by commas.
  /// [tunnelId] UUID of the tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  const GetZeroTrustTunnelCloudflaredRoutesInvokeResult({
    this.accountId,
    this.comment,
    this.existedAt,
    this.isDeleted,
    this.maxItems,
    this.networkSubset,
    this.networkSuperset,
    this.results,
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustTunnelCloudflaredRoutesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'routeId': ?routeId,
      'tunTypes': ?tunTypes,
      'tunnelId': ?tunnelId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredRoutesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredRoutesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      networkSubset: (() { final guardedValue = map['networkSubset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSuperset: (() { final guardedValue = map['networkSuperset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustTunnelCloudflaredRoutesResult>(guardedValue, (value) => GetZeroTrustTunnelCloudflaredRoutesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunTypes: (() { final guardedValue = map['tunTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
