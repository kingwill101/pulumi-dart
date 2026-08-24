// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_config_config.dart';

/// Input properties used for looking up and filtering TunnelConfig resources.
class TunnelConfigState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The tunnel configuration and ingress rules.
  final pulumi.Input<TunnelConfigConfig?>? config;
  final pulumi.Input<String?>? createdAt;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  final pulumi.Input<String?>? source;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;
  /// The version of the Tunnel Configuration.
  final pulumi.Input<int?>? version;

  /// Creates a new [TunnelConfigState].
  /// [accountId] Identifier.
  /// [config] The tunnel configuration and ingress rules.
  /// [createdAt] Optional.
  /// [source] Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// [tunnelId] UUID of the tunnel.
  /// [version] The version of the Tunnel Configuration.
  const TunnelConfigState({
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
      'config': ?pulumi.Input.mapOptionalInputValue<TunnelConfigConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'source': ?source,
      'tunnelId': ?tunnelId,
      'version': ?version,
    };
  }

  factory TunnelConfigState.fromMap(Map<String, dynamic> map) {
    return TunnelConfigState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TunnelConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
