// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations of the API Security add-on.
class GoogleCloudApigeeV1ApiSecurityConfig {
  /// Flag that specifies whether the API security add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GoogleCloudApigeeV1ApiSecurityConfig].
  /// [enabled] Flag that specifies whether the API security add-on is enabled.
  const GoogleCloudApigeeV1ApiSecurityConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GoogleCloudApigeeV1ApiSecurityConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ApiSecurityConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

