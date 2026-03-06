// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Analytics add-on.
class GoogleCloudApigeeV1AnalyticsConfigResponse {
  /// Whether the Analytics add-on is enabled.
  final pulumi.Input<bool> enabled;
  /// Time at which the Analytics add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  final pulumi.Input<String> expireTimeMillis;
  /// The state of the Analytics add-on.
  final pulumi.Input<String> state;
  /// The latest update time.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudApigeeV1AnalyticsConfigResponse].
  /// [enabled] Whether the Analytics add-on is enabled.
  /// [expireTimeMillis] Time at which the Analytics add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  /// [state] The state of the Analytics add-on.
  /// [updateTime] The latest update time.
  const GoogleCloudApigeeV1AnalyticsConfigResponse({
    required this.enabled,
    required this.expireTimeMillis,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'expireTimeMillis': expireTimeMillis,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudApigeeV1AnalyticsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AnalyticsConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expireTimeMillis: pulumi.Input.fromValue(map['expireTimeMillis'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

