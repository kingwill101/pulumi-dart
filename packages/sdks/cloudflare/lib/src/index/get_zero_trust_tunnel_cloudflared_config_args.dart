// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_config_get_zero_trust_tunnel_cloudflared_config_args_doc}
/// Arguments for getZeroTrustTunnelCloudflaredConfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_config_get_zero_trust_tunnel_cloudflared_config_args_doc}
class GetZeroTrustTunnelCloudflaredConfigArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredConfigArgs].
  /// [accountId] Identifier.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelCloudflaredConfigArgs({
    required this.accountId,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'tunnelId': tunnelId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
