// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An option to store configuration into different place
class ConfigurationStore {
  /// The app configuration id to store configuration
  final pulumi.Input<String>? appConfigurationId;

  /// Creates a new [ConfigurationStore].
  /// [appConfigurationId] The app configuration id to store configuration
  const ConfigurationStore({
    this.appConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigurationId': ?appConfigurationId,
    };
  }

  factory ConfigurationStore.fromMap(Map<String, dynamic> map) {
    return ConfigurationStore(
      appConfigurationId: (() { final guardedValue = map['appConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
