// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_warp_connector_config_config.dart';

/// Input properties used for looking up and filtering ZeroTrustTunnelWarpConnectorConfig resources.
class ZeroTrustTunnelWarpConnectorConfigState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Provider-specific configuration. Required shape depends on ha_mode. For `aws`, must contain `fnrId`. For `local`, must contain `vips`. For `none` and `disabled`, must be empty or omitted.
  final pulumi.Input<ZeroTrustTunnelWarpConnectorConfigConfig?>? config;
  /// Monotonically increasing configuration version, incremented on each PUT.
  final pulumi.Input<int?>? configurationVersion;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String?>? createdAt;
  /// High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// Available values: "none", "disabled", "aws", "local".
  final pulumi.Input<String?>? haMode;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;
  /// Timestamp of the last update. Null if never updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustTunnelWarpConnectorConfigState].
  /// [accountId] Identifier.
  /// [config] Provider-specific configuration. Required shape depends on ha_mode. For `aws`, must contain `fnrId`. For `local`, must contain `vips`. For `none` and `disabled`, must be empty or omitted.
  /// [configurationVersion] Monotonically increasing configuration version, incremented on each PUT.
  /// [createdAt] Timestamp of when the resource was created.
  /// [haMode] High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// [tunnelId] UUID of the tunnel.
  /// [updatedAt] Timestamp of the last update. Null if never updated.
  const ZeroTrustTunnelWarpConnectorConfigState({
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
      'config': ?pulumi.Input.mapOptionalInputValue<ZeroTrustTunnelWarpConnectorConfigConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'configurationVersion': ?configurationVersion,
      'createdAt': ?createdAt,
      'haMode': ?haMode,
      'tunnelId': ?tunnelId,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustTunnelWarpConnectorConfigState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelWarpConnectorConfigState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustTunnelWarpConnectorConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationVersion: (() { final guardedValue = map['configurationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haMode: (() { final guardedValue = map['haMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
