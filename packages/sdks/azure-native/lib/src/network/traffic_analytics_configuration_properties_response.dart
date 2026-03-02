// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsConfigurationPropertiesResponse {
  /// Flag to enable/disable traffic analytics.
  final pulumi.Input<bool>? enabled;
  /// The interval in minutes which would decide how frequently TA service should do flow analytics.
  final pulumi.Input<int>? trafficAnalyticsInterval;
  /// The resource guid of the attached workspace.
  final pulumi.Input<String>? workspaceId;
  /// The location of the attached workspace.
  final pulumi.Input<String>? workspaceRegion;
  /// Resource Id of the attached workspace.
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [TrafficAnalyticsConfigurationPropertiesResponse].
  /// [enabled] Flag to enable/disable traffic analytics.
  /// [trafficAnalyticsInterval] The interval in minutes which would decide how frequently TA service should do flow analytics.
  /// [workspaceId] The resource guid of the attached workspace.
  /// [workspaceRegion] The location of the attached workspace.
  /// [workspaceResourceId] Resource Id of the attached workspace.
  TrafficAnalyticsConfigurationPropertiesResponse({
    this.enabled,
    this.trafficAnalyticsInterval,
    this.workspaceId,
    this.workspaceRegion,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'trafficAnalyticsInterval': ?trafficAnalyticsInterval,
      'workspaceId': ?workspaceId,
      'workspaceRegion': ?workspaceRegion,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory TrafficAnalyticsConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TrafficAnalyticsConfigurationPropertiesResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      trafficAnalyticsInterval: map['trafficAnalyticsInterval'] == null ? null : (map['trafficAnalyticsInterval'] as int).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
      workspaceRegion: map['workspaceRegion'] == null ? null : (map['workspaceRegion'] as String).input(),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : (map['workspaceResourceId'] as String).input(),
    );
  }
}

