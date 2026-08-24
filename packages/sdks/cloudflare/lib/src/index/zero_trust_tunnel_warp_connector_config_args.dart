// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_warp_connector_config_config.dart';

/// {@template pulumi_index_zero_trust_tunnel_warp_connector_config_zero_trust_tunnel_warp_connector_config_args_doc}
/// The set of arguments for ZeroTrustTunnelWarpConnectorConfig.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_tunnel_warp_connector_config_zero_trust_tunnel_warp_connector_config_args_doc}
class ZeroTrustTunnelWarpConnectorConfigArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Provider-specific configuration. Required shape depends on ha_mode. For `aws`, must contain `fnrId`. For `local`, must contain `vips`. For `none` and `disabled`, must be empty or omitted.
  final pulumi.Input<ZeroTrustTunnelWarpConnectorConfigConfig?>? config;
  /// High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// Available values: "none", "disabled", "aws", "local".
  final pulumi.Input<String> haMode;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;

  /// Creates a new [ZeroTrustTunnelWarpConnectorConfigArgs].
  /// [accountId] Identifier.
  /// [config] Provider-specific configuration. Required shape depends on ha_mode. For `aws`, must contain `fnrId`. For `local`, must contain `vips`. For `none` and `disabled`, must be empty or omitted.
  /// [haMode] High-availability mode for the WARP Connector tunnel. `none` means HA is enabled but no provider is configured yet (newly created tunnels default to this). `disabled` means HA is explicitly turned off. `aws` uses AWS ENI move for failover. `local` uses virtual IPs (VIPs) on the local interface.
  /// [tunnelId] UUID of the tunnel.
  const ZeroTrustTunnelWarpConnectorConfigArgs({
    required this.accountId,
    this.config,
    required this.haMode,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<ZeroTrustTunnelWarpConnectorConfigConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'haMode': haMode,
      'tunnelId': tunnelId,
    };
  }

  factory ZeroTrustTunnelWarpConnectorConfigArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelWarpConnectorConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustTunnelWarpConnectorConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      haMode: pulumi.Input.fromValue(map['haMode'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
