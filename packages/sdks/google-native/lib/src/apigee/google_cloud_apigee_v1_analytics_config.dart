// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Analytics add-on.
class GoogleCloudApigeeV1AnalyticsConfig {
  /// Whether the Analytics add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GoogleCloudApigeeV1AnalyticsConfig].
  /// [enabled] Whether the Analytics add-on is enabled.
  const GoogleCloudApigeeV1AnalyticsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GoogleCloudApigeeV1AnalyticsConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AnalyticsConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

