// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_connection.dart';

/// Input properties used for looking up and filtering Tunnel resources.
class TunnelState {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountTag;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final pulumi.Input<String?>? configSrc;
  /// The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  final pulumi.Input<List<TunnelConnection>?>? connections;
  /// Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  final pulumi.Input<String?>? connsActiveAt;
  /// Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  final pulumi.Input<String?>? connsInactiveAt;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String?>? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String?>? deletedAt;
  /// Metadata associated with the tunnel.
  final pulumi.Input<String?>? metadata;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String?>? name;
  /// If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  final pulumi.Input<bool?>? remoteConfig;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  final pulumi.Input<String?>? status;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final pulumi.Input<String?>? tunType;
  /// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  final pulumi.Input<String?>? tunnelSecret;

  /// Creates a new [TunnelState].
  /// [accountId] Cloudflare account ID
  /// [accountTag] Cloudflare account ID
  /// [configSrc] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// [connections] The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  /// [connsActiveAt] Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  /// [connsInactiveAt] Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [metadata] Metadata associated with the tunnel.
  /// [name] A user-friendly name for a tunnel.
  /// [remoteConfig] If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  /// [status] The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// [tunType] The type of tunnel.
  /// [tunnelSecret] Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  const TunnelState({
    this.accountId,
    this.accountTag,
    this.configSrc,
    this.connections,
    this.connsActiveAt,
    this.connsInactiveAt,
    this.createdAt,
    this.deletedAt,
    this.metadata,
    this.name,
    this.remoteConfig,
    this.status,
    this.tunType,
    this.tunnelSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountTag': ?accountTag,
      'configSrc': ?configSrc,
      'connections': ?pulumi.Input.mapOptionalInputValue<List<TunnelConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<TunnelConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connsActiveAt': ?connsActiveAt,
      'connsInactiveAt': ?connsInactiveAt,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'metadata': ?metadata,
      'name': ?name,
      'remoteConfig': ?remoteConfig,
      'status': ?status,
      'tunType': ?tunType,
      'tunnelSecret': ?tunnelSecret,
    };
  }

  factory TunnelState.fromMap(Map<String, dynamic> map) {
    return TunnelState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configSrc: (() { final guardedValue = map['configSrc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TunnelConnection>(guardedValue, (value) => TunnelConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connsActiveAt: (() { final guardedValue = map['connsActiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connsInactiveAt: (() { final guardedValue = map['connsInactiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteConfig: (() { final guardedValue = map['remoteConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunType: (() { final guardedValue = map['tunType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelSecret: (() { final guardedValue = map['tunnelSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
