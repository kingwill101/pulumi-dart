// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Integration add-on.
class GoogleCloudApigeeV1IntegrationConfig {
  /// Flag that specifies whether the Integration add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GoogleCloudApigeeV1IntegrationConfig].
  /// [enabled] Flag that specifies whether the Integration add-on is enabled.
  GoogleCloudApigeeV1IntegrationConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GoogleCloudApigeeV1IntegrationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1IntegrationConfig(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

