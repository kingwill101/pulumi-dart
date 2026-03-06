// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_response_alloydb_v1beta.dart';

/// Client connection configuration
class ClientConnectionConfigResponseAlloydbV1beta {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool> requireConnectors;
  /// Optional. SSL config option for this instance.
  final pulumi.Input<SslConfigResponseAlloydbV1beta> sslConfig;

  /// Creates a new [ClientConnectionConfigResponseAlloydbV1beta].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  const ClientConnectionConfigResponseAlloydbV1beta({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': requireConnectors,
      'sslConfig': pulumi.Input.mapInputValue<SslConfigResponseAlloydbV1beta, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClientConnectionConfigResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfigResponseAlloydbV1beta(
      requireConnectors: pulumi.Input.fromValue(map['requireConnectors'] as bool),
      sslConfig: pulumi.Input.fromValue(SslConfigResponseAlloydbV1beta.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

