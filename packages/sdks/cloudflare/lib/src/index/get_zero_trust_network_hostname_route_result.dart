// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_network_hostname_route_filter.dart';

/// Result data returned by getZeroTrustNetworkHostnameRoute.
class GetZeroTrustNetworkHostnameRouteResult {
  /// Cloudflare account ID
  final String? accountId;
  /// An optional description of the hostname route.
  final String? comment;
  /// Timestamp of when the resource was created.
  final String? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final String? deletedAt;
  final GetZeroTrustNetworkHostnameRouteFilter? filter;
  /// The hostname of the route.
  final String? hostname;
  /// The hostname route ID.
  final String? hostnameRouteId;
  /// The hostname route ID.
  final String? id;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final String? tunType;
  /// UUID of the tunnel.
  final String? tunnelId;
  /// A user-friendly name for a tunnel.
  final String? tunnelName;

  /// Creates a new [GetZeroTrustNetworkHostnameRouteResult].
  /// [accountId] Cloudflare account ID
  /// [comment] An optional description of the hostname route.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [filter] Optional.
  /// [hostname] The hostname of the route.
  /// [hostnameRouteId] The hostname route ID.
  /// [id] The hostname route ID.
  /// [tunType] The type of tunnel.
  /// [tunnelId] UUID of the tunnel.
  /// [tunnelName] A user-friendly name for a tunnel.
  const GetZeroTrustNetworkHostnameRouteResult({
    this.accountId,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.filter,
    this.hostname,
    this.hostnameRouteId,
    this.id,
    this.tunType,
    this.tunnelId,
    this.tunnelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'filter': ?filter?.toMap(),
      'hostname': ?hostname,
      'hostnameRouteId': ?hostnameRouteId,
      'id': ?id,
      'tunType': ?tunType,
      'tunnelId': ?tunnelId,
      'tunnelName': ?tunnelName,
    };
  }

  factory GetZeroTrustNetworkHostnameRouteResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustNetworkHostnameRouteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustNetworkHostnameRouteFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostnameRouteId: (() { final guardedValue = map['hostnameRouteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunType: (() { final guardedValue = map['tunType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelName: (() { final guardedValue = map['tunnelName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
