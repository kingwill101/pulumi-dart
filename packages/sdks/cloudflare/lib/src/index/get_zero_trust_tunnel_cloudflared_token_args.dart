// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_token_get_zero_trust_tunnel_cloudflared_token_args_doc}
/// Arguments for getZeroTrustTunnelCloudflaredToken.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_token_get_zero_trust_tunnel_cloudflared_token_args_doc}
class GetZeroTrustTunnelCloudflaredTokenArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredTokenArgs].
  /// [accountId] Cloudflare account ID
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelCloudflaredTokenArgs({
    required this.accountId,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'tunnelId': tunnelId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredTokenArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
