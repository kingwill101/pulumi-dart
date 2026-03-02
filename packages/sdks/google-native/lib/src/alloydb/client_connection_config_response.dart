// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_response.dart';

/// Client connection configuration
class ClientConnectionConfigResponse {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool> requireConnectors;
  /// Optional. SSL config option for this instance.
  final pulumi.Input<SslConfigResponse> sslConfig;

  /// Creates a new [ClientConnectionConfigResponse].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  ClientConnectionConfigResponse({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': requireConnectors,
      'sslConfig': pulumi.Input.mapInputValue<SslConfigResponse, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClientConnectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfigResponse(
      requireConnectors: (map['requireConnectors'] as bool).input(),
      sslConfig: (SslConfigResponse.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

