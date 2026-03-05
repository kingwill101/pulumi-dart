// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfig {
  /// Whether Cloud Connector is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ConfigConnectorConfig].
  /// [enabled] Whether Cloud Connector is enabled for this cluster.
  ConfigConnectorConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfigConnectorConfig.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

