// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An option to store configuration into different place
class ConfigurationStoreResponse {
  /// The app configuration id to store configuration
  final pulumi.Input<String>? appConfigurationId;

  /// Creates a new [ConfigurationStoreResponse].
  /// [appConfigurationId] The app configuration id to store configuration
  ConfigurationStoreResponse({this.appConfigurationId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'appConfigurationId': ?appConfigurationId};
  }

  factory ConfigurationStoreResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreResponse(
      appConfigurationId: (() {
        final guardedValue = map['appConfigurationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
