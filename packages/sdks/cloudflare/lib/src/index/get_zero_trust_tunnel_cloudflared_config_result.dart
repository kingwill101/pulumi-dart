// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_tunnel_cloudflared_config_config.dart';

/// Result data returned by getZeroTrustTunnelCloudflaredConfig.
class GetZeroTrustTunnelCloudflaredConfigResult {
  /// Identifier.
  final String? accountId;
  /// The tunnel configuration and ingress rules.
  final GetZeroTrustTunnelCloudflaredConfigConfig? config;
  final String? createdAt;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final String? source;
  /// UUID of the tunnel.
  final String? tunnelId;
  /// The version of the Tunnel Configuration.
  final int? version;

  /// Creates a new [GetZeroTrustTunnelCloudflaredConfigResult].
  /// [accountId] Identifier.
  /// [config] The tunnel configuration and ingress rules.
  /// [createdAt] Optional.
  /// [source] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// [tunnelId] UUID of the tunnel.
  /// [version] The version of the Tunnel Configuration.
  const GetZeroTrustTunnelCloudflaredConfigResult({
    this.accountId,
    this.config,
    this.createdAt,
    this.source,
    this.tunnelId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'createdAt': ?createdAt,
      'source': ?source,
      'tunnelId': ?tunnelId,
      'version': ?version,
    };
  }

  factory GetZeroTrustTunnelCloudflaredConfigResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredConfigResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetZeroTrustTunnelCloudflaredConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
