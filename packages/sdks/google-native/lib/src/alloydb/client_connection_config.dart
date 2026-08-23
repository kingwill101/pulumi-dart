// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config.dart';

/// Client connection configuration
class ClientConnectionConfig {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool>? requireConnectors;
  /// Optional. SSL config option for this instance.
  final pulumi.Input<SslConfig>? sslConfig;

  /// Creates a new [ClientConnectionConfig].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  const ClientConnectionConfig({
    this.requireConnectors,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': ?requireConnectors,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClientConnectionConfig.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfig(
      requireConnectors: (() { final guardedValue = map['requireConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
