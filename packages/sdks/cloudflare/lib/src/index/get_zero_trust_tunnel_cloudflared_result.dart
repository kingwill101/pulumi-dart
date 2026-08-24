// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_connection.dart';
import 'get_zero_trust_tunnel_cloudflared_filter.dart';

/// Result data returned by getZeroTrustTunnelCloudflared.
class GetZeroTrustTunnelCloudflaredResult {
  /// Cloudflare account ID
  final String? accountId;
  /// Cloudflare account ID
  final String? accountTag;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final String? configSrc;
  /// The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  final List<GetZeroTrustTunnelCloudflaredConnection>? connections;
  /// Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  final String? connsActiveAt;
  /// Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  final String? connsInactiveAt;
  /// Timestamp of when the resource was created.
  final String? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final String? deletedAt;
  final GetZeroTrustTunnelCloudflaredFilter? filter;
  /// UUID of the tunnel.
  final String? id;
  /// Metadata associated with the tunnel.
  final String? metadata;
  /// A user-friendly name for a tunnel.
  final String? name;
  /// If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  final bool? remoteConfig;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  final String? status;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final String? tunType;
  /// UUID of the tunnel.
  final String? tunnelId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredResult].
  /// [accountId] Cloudflare account ID
  /// [accountTag] Cloudflare account ID
  /// [configSrc] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// [connections] The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  /// [connsActiveAt] Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  /// [connsInactiveAt] Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [filter] Optional.
  /// [id] UUID of the tunnel.
  /// [metadata] Metadata associated with the tunnel.
  /// [name] A user-friendly name for a tunnel.
  /// [remoteConfig] If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  /// [status] The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// [tunType] The type of tunnel.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelCloudflaredResult({
    this.accountId,
    this.accountTag,
    this.configSrc,
    this.connections,
    this.connsActiveAt,
    this.connsInactiveAt,
    this.createdAt,
    this.deletedAt,
    this.filter,
    this.id,
    this.metadata,
    this.name,
    this.remoteConfig,
    this.status,
    this.tunType,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountTag': ?accountTag,
      'configSrc': ?configSrc,
      'connections': ?(() { final guardedValue = connections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustTunnelCloudflaredConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connsActiveAt': ?connsActiveAt,
      'connsInactiveAt': ?connsInactiveAt,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'remoteConfig': ?remoteConfig,
      'status': ?status,
      'tunType': ?tunType,
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configSrc: (() { final guardedValue = map['configSrc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustTunnelCloudflaredConnection>(guardedValue, (value) => GetZeroTrustTunnelCloudflaredConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      connsActiveAt: (() { final guardedValue = map['connsActiveAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connsInactiveAt: (() { final guardedValue = map['connsInactiveAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustTunnelCloudflaredFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteConfig: (() { final guardedValue = map['remoteConfig']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunType: (() { final guardedValue = map['tunType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
