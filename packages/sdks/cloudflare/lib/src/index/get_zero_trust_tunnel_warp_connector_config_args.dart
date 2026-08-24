// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_tunnel_warp_connector_config_get_zero_trust_tunnel_warp_connector_config_args_doc}
/// Arguments for getZeroTrustTunnelWarpConnectorConfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_warp_connector_config_get_zero_trust_tunnel_warp_connector_config_args_doc}
class GetZeroTrustTunnelWarpConnectorConfigArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorConfigArgs].
  /// [accountId] Identifier.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelWarpConnectorConfigArgs({
    required this.accountId,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'tunnelId': tunnelId,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
