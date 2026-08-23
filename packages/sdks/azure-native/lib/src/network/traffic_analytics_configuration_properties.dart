// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsConfigurationProperties {
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

  /// Creates a new [TrafficAnalyticsConfigurationProperties].
  /// [enabled] Flag to enable/disable traffic analytics.
  /// [trafficAnalyticsInterval] The interval in minutes which would decide how frequently TA service should do flow analytics.
  /// [workspaceId] The resource guid of the attached workspace.
  /// [workspaceRegion] The location of the attached workspace.
  /// [workspaceResourceId] Resource Id of the attached workspace.
  const TrafficAnalyticsConfigurationProperties({
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

  factory TrafficAnalyticsConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return TrafficAnalyticsConfigurationProperties(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trafficAnalyticsInterval: (() { final guardedValue = map['trafficAnalyticsInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceRegion: (() { final guardedValue = map['workspaceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
