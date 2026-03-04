// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_response_alloydb_v1alpha.dart';

/// Client connection configuration
class ClientConnectionConfigResponseAlloydbV1alpha {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool> requireConnectors;

  /// Optional. SSL config option for this instance.
  final pulumi.Input<SslConfigResponseAlloydbV1alpha> sslConfig;

  /// Creates a new [ClientConnectionConfigResponseAlloydbV1alpha].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  ClientConnectionConfigResponseAlloydbV1alpha({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': requireConnectors,
      'sslConfig':
          pulumi.Input.mapInputValue<
            SslConfigResponseAlloydbV1alpha,
            Map<String, dynamic>
          >(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClientConnectionConfigResponseAlloydbV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClientConnectionConfigResponseAlloydbV1alpha(
      requireConnectors: pulumi.Input.fromValue(
        map['requireConnectors'] as bool,
      ),
      sslConfig: pulumi.Input.fromValue(
        SslConfigResponseAlloydbV1alpha.fromMap(
          (map['sslConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
