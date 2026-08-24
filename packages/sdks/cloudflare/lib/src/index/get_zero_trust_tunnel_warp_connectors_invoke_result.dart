// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_warp_connectors_result.dart';

/// Result data returned by getZeroTrustTunnelWarpConnectors.
class GetZeroTrustTunnelWarpConnectorsInvokeResult {
  /// Cloudflare account ID
  final String? accountId;
  final String? excludePrefix;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final String? existedAt;
  final String? includePrefix;
  /// If `true`, only include deleted tunnels. If `false`, exclude deleted tunnels. If empty, all tunnels will be included.
  final bool? isDeleted;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// A user-friendly name for the tunnel.
  final String? name;
  /// The items returned by the data source
  final List<GetZeroTrustTunnelWarpConnectorsResult>? results;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  final String? status;
  /// UUID of the tunnel.
  final String? uuid;
  final String? wasActiveAt;
  final String? wasInactiveAt;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorsInvokeResult].
  /// [accountId] Cloudflare account ID
  /// [excludePrefix] Optional.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [includePrefix] Optional.
  /// [isDeleted] If `true`, only include deleted tunnels. If `false`, exclude deleted tunnels. If empty, all tunnels will be included.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] A user-friendly name for the tunnel.
  /// [results] The items returned by the data source
  /// [status] The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// [uuid] UUID of the tunnel.
  /// [wasActiveAt] Optional.
  /// [wasInactiveAt] Optional.
  const GetZeroTrustTunnelWarpConnectorsInvokeResult({
    this.accountId,
    this.excludePrefix,
    this.existedAt,
    this.includePrefix,
    this.isDeleted,
    this.maxItems,
    this.name,
    this.results,
    this.status,
    this.uuid,
    this.wasActiveAt,
    this.wasInactiveAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'excludePrefix': ?excludePrefix,
      'existedAt': ?existedAt,
      'includePrefix': ?includePrefix,
      'isDeleted': ?isDeleted,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustTunnelWarpConnectorsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'uuid': ?uuid,
      'wasActiveAt': ?wasActiveAt,
      'wasInactiveAt': ?wasInactiveAt,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludePrefix: (() { final guardedValue = map['excludePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includePrefix: (() { final guardedValue = map['includePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustTunnelWarpConnectorsResult>(guardedValue, (value) => GetZeroTrustTunnelWarpConnectorsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wasActiveAt: (() { final guardedValue = map['wasActiveAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wasInactiveAt: (() { final guardedValue = map['wasInactiveAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
