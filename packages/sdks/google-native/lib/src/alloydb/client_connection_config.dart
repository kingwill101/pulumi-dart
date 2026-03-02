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
  ClientConnectionConfig({
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
      requireConnectors: map['requireConnectors'] == null ? null : (map['requireConnectors']! as bool).input(),
      sslConfig: map['sslConfig'] == null ? null : (SslConfig.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

