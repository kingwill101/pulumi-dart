// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_alloydb_v1beta.dart';

/// Client connection configuration
class ClientConnectionConfigAlloydbV1beta {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool>? requireConnectors;
  /// Optional. SSL config option for this instance.
  final pulumi.Input<SslConfigAlloydbV1beta>? sslConfig;

  /// Creates a new [ClientConnectionConfigAlloydbV1beta].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  ClientConnectionConfigAlloydbV1beta({
    this.requireConnectors,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': ?requireConnectors,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<SslConfigAlloydbV1beta, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClientConnectionConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfigAlloydbV1beta(
      requireConnectors: (() { final guardedValue = map['requireConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

