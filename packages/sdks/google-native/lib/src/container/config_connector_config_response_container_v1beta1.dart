// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfigResponseContainerV1beta1 {
  /// Whether Cloud Connector is enabled for this cluster.
  final bool enabled;

  /// Creates a new [ConfigConnectorConfigResponseContainerV1beta1].
  /// [enabled] Whether Cloud Connector is enabled for this cluster.
  ConfigConnectorConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfigConnectorConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}

