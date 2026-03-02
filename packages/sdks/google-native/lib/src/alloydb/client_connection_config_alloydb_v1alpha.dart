// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_alloydb_v1alpha.dart';

/// Client connection configuration
class ClientConnectionConfigAlloydbV1alpha {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool>? requireConnectors;
  /// Optional. SSL config option for this instance.
  final pulumi.Input<SslConfigAlloydbV1alpha>? sslConfig;

  /// Creates a new [ClientConnectionConfigAlloydbV1alpha].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  ClientConnectionConfigAlloydbV1alpha({
    this.requireConnectors,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': ?requireConnectors,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<SslConfigAlloydbV1alpha, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClientConnectionConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfigAlloydbV1alpha(
      requireConnectors: map['requireConnectors'] == null ? null : (map['requireConnectors']! as bool).input(),
      sslConfig: map['sslConfig'] == null ? null : (SslConfigAlloydbV1alpha.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

