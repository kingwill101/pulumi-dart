// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_tunnel_tunnel_args_doc}
/// The set of arguments for Tunnel.
/// {@endtemplate}
/// {@macro pulumi_index_tunnel_tunnel_args_doc}
class TunnelArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final pulumi.Input<String?>? configSrc;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String> name;
  /// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  final pulumi.Input<String?>? tunnelSecret;

  /// Creates a new [TunnelArgs].
  /// [accountId] Cloudflare account ID
  /// [configSrc] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// [name] A user-friendly name for a tunnel.
  /// [tunnelSecret] Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  const TunnelArgs({
    required this.accountId,
    this.configSrc,
    required this.name,
    this.tunnelSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'configSrc': ?configSrc,
      'name': name,
      'tunnelSecret': ?tunnelSecret,
    };
  }

  factory TunnelArgs.fromMap(Map<String, dynamic> map) {
    return TunnelArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      configSrc: (() { final guardedValue = map['configSrc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tunnelSecret: (() { final guardedValue = map['tunnelSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
