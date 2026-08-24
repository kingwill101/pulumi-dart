// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_tunnel_warp_connector_config_config.dart';

/// Result data returned by getZeroTrustTunnelWarpConnectorConfig.
class GetZeroTrustTunnelWarpConnectorConfigResult {
  /// Identifier.
  final String? accountId;
  /// Provider-specific configuration. Present for `aws` and `local` modes.
  final GetZeroTrustTunnelWarpConnectorConfigConfig? config;
  /// Monotonically increasing configuration version, incremented on each PUT.
  final int? configurationVersion;
  /// Timestamp of when the resource was created.
  final String? createdAt;
  /// High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// Available values: "none", "disabled", "aws", "local".
  final String? haMode;
  /// UUID of the tunnel.
  final String? tunnelId;
  /// Timestamp of the last update. Null if never updated.
  final String? updatedAt;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorConfigResult].
  /// [accountId] Identifier.
  /// [config] Provider-specific configuration. Present for `aws` and `local` modes.
  /// [configurationVersion] Monotonically increasing configuration version, incremented on each PUT.
  /// [createdAt] Timestamp of when the resource was created.
  /// [haMode] High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// [tunnelId] UUID of the tunnel.
  /// [updatedAt] Timestamp of the last update. Null if never updated.
  const GetZeroTrustTunnelWarpConnectorConfigResult({
    this.accountId,
    this.config,
    this.configurationVersion,
    this.createdAt,
    this.haMode,
    this.tunnelId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'configurationVersion': ?configurationVersion,
      'createdAt': ?createdAt,
      'haMode': ?haMode,
      'tunnelId': ?tunnelId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorConfigResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorConfigResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetZeroTrustTunnelWarpConnectorConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      configurationVersion: (() { final guardedValue = map['configurationVersion']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      haMode: (() { final guardedValue = map['haMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
