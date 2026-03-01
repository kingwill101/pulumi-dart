// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfig {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool? enabled;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

