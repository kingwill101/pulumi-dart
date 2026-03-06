// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_client_connection_config_ssl_config.dart';

class GetInstanceClientConnectionConfig {
  /// Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final pulumi.Input<bool> requireConnectors;
  /// SSL config option for this instance.
  final pulumi.Input<List<GetInstanceClientConnectionConfigSslConfig>> sslConfigs;

  /// Creates a new [GetInstanceClientConnectionConfig].
  /// [requireConnectors] Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfigs] SSL config option for this instance.
  const GetInstanceClientConnectionConfig({
    required this.requireConnectors,
    required this.sslConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireConnectors': requireConnectors,
      'sslConfigs': pulumi.Input.mapInputValue<List<GetInstanceClientConnectionConfigSslConfig>, List<Map<String, dynamic>>>(sslConfigs, (value) => pulumi.Input.encodeList<GetInstanceClientConnectionConfigSslConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceClientConnectionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceClientConnectionConfig(
      requireConnectors: pulumi.Input.fromValue(map['requireConnectors'] as bool),
      sslConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceClientConnectionConfigSslConfig>(map['sslConfigs']!, (value) => GetInstanceClientConnectionConfigSslConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

