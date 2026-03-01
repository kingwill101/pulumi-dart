// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfigResponse {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool enabled;

  /// Creates a new [ConfigConnectorConfigResponse].
  /// [enabled] Whether Cloud Connector is enabled for this cluster.
  ConfigConnectorConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfigConnectorConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

