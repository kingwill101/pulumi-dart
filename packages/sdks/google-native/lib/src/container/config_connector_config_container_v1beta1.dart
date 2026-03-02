// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfigContainerV1beta1 {
  /// Whether Cloud Connector is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ConfigConnectorConfigContainerV1beta1].
  /// [enabled] Whether Cloud Connector is enabled for this cluster.
  ConfigConnectorConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfigConnectorConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ConfigConnectorConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

