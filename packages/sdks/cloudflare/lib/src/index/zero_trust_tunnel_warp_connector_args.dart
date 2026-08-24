// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_tunnel_warp_connector_zero_trust_tunnel_warp_connector_args_doc}
/// The set of arguments for ZeroTrustTunnelWarpConnector.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_tunnel_warp_connector_zero_trust_tunnel_warp_connector_args_doc}
class ZeroTrustTunnelWarpConnectorArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// Indicates that the tunnel will be created to be highly available. If omitted, defaults to false.
  final pulumi.Input<bool?>? ha;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String> name;
  /// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  final pulumi.Input<String?>? tunnelSecret;

  /// Creates a new [ZeroTrustTunnelWarpConnectorArgs].
  /// [accountId] Cloudflare account ID
  /// [ha] Indicates that the tunnel will be created to be highly available. If omitted, defaults to false.
  /// [name] A user-friendly name for a tunnel.
  /// [tunnelSecret] Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  const ZeroTrustTunnelWarpConnectorArgs({
    required this.accountId,
    this.ha,
    required this.name,
    this.tunnelSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'ha': ?ha,
      'name': name,
      'tunnelSecret': ?tunnelSecret,
    };
  }

  factory ZeroTrustTunnelWarpConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelWarpConnectorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      ha: (() { final guardedValue = map['ha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tunnelSecret: (() { final guardedValue = map['tunnelSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
