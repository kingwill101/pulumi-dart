// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_config_config.dart';

/// {@template pulumi_index_tunnel_config_tunnel_config_args_doc}
/// The set of arguments for TunnelConfig.
/// {@endtemplate}
/// {@macro pulumi_index_tunnel_config_tunnel_config_args_doc}
class TunnelConfigArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The tunnel configuration and ingress rules.
  final pulumi.Input<TunnelConfigConfig?>? config;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final pulumi.Input<String?>? source;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;

  /// Creates a new [TunnelConfigArgs].
  /// [accountId] Identifier.
  /// [config] The tunnel configuration and ingress rules.
  /// [source] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// [tunnelId] UUID of the tunnel.
  const TunnelConfigArgs({
    required this.accountId,
    this.config,
    this.source,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<TunnelConfigConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'source': ?source,
      'tunnelId': tunnelId,
    };
  }

  factory TunnelConfigArgs.fromMap(Map<String, dynamic> map) {
    return TunnelConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TunnelConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
