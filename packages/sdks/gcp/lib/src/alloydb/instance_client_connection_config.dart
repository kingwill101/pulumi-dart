// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_client_connection_config_ssl_config.dart';

class InstanceClientConnectionConfig {
  /// Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool>? requireConnectors;
  /// SSL config option for this instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceClientConnectionConfigSslConfig>? sslConfig;

  /// Creates a new [InstanceClientConnectionConfig].
  /// [requireConnectors] Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] SSL config option for this instance.
  InstanceClientConnectionConfig({
    this.requireConnectors,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': ?requireConnectors,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<InstanceClientConnectionConfigSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory InstanceClientConnectionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceClientConnectionConfig(
      requireConnectors: (() { final guardedValue = map['requireConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceClientConnectionConfigSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

