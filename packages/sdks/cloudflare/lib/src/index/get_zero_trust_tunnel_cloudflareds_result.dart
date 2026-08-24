// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflareds_result_connection.dart';

class GetZeroTrustTunnelCloudflaredsResult {
  /// Cloudflare account ID
  final pulumi.Input<String> accountTag;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final pulumi.Input<String> configSrc;
  /// The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  final pulumi.Input<List<GetZeroTrustTunnelCloudflaredsResultConnection>> connections;
  /// Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  final pulumi.Input<String> connsActiveAt;
  /// Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  final pulumi.Input<String> connsInactiveAt;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String> deletedAt;
  /// UUID of the tunnel.
  final pulumi.Input<String> id;
  /// Metadata associated with the tunnel.
  final pulumi.Input<String> metadata;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String> name;
  /// If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  final pulumi.Input<bool> remoteConfig;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  final pulumi.Input<String> status;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final pulumi.Input<String> tunType;

  /// Creates a new [GetZeroTrustTunnelCloudflaredsResult].
  /// [accountTag] Cloudflare account ID
  /// [configSrc] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// [connections] The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  /// [connsActiveAt] Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  /// [connsInactiveAt] Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [id] UUID of the tunnel.
  /// [metadata] Metadata associated with the tunnel.
  /// [name] A user-friendly name for a tunnel.
  /// [remoteConfig] If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  /// [status] The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// [tunType] The type of tunnel.
  const GetZeroTrustTunnelCloudflaredsResult({
    required this.accountTag,
    required this.configSrc,
    required this.connections,
    required this.connsActiveAt,
    required this.connsInactiveAt,
    required this.createdAt,
    required this.deletedAt,
    required this.id,
    required this.metadata,
    required this.name,
    required this.remoteConfig,
    required this.status,
    required this.tunType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTag': accountTag,
      'configSrc': configSrc,
      'connections': pulumi.Input.mapInputValue<List<GetZeroTrustTunnelCloudflaredsResultConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<GetZeroTrustTunnelCloudflaredsResultConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connsActiveAt': connsActiveAt,
      'connsInactiveAt': connsInactiveAt,
      'createdAt': createdAt,
      'deletedAt': deletedAt,
      'id': id,
      'metadata': metadata,
      'name': name,
      'remoteConfig': remoteConfig,
      'status': status,
      'tunType': tunType,
    };
  }

  factory GetZeroTrustTunnelCloudflaredsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredsResult(
      accountTag: pulumi.Input.fromValue(map['accountTag'] as String),
      configSrc: pulumi.Input.fromValue(map['configSrc'] as String),
      connections: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustTunnelCloudflaredsResultConnection>(map['connections']!, (value) => GetZeroTrustTunnelCloudflaredsResultConnection.fromMap((value as Map).cast<String, dynamic>()))),
      connsActiveAt: pulumi.Input.fromValue(map['connsActiveAt'] as String),
      connsInactiveAt: pulumi.Input.fromValue(map['connsInactiveAt'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      metadata: pulumi.Input.fromValue(map['metadata'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      remoteConfig: pulumi.Input.fromValue(map['remoteConfig'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      tunType: pulumi.Input.fromValue(map['tunType'] as String),
    );
  }
}
