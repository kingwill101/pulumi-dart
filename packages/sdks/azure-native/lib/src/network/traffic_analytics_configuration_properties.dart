// ignore_for_file: unused_element, unnecessary_cast


/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsConfigurationProperties {
  /// Flag to enable/disable traffic analytics.
  final bool? enabled;
  /// The interval in minutes which would decide how frequently TA service should do flow analytics.
  final int? trafficAnalyticsInterval;
  /// The resource guid of the attached workspace.
  final String? workspaceId;
  /// The location of the attached workspace.
  final String? workspaceRegion;
  /// Resource Id of the attached workspace.
  final String? workspaceResourceId;

  /// Creates a new [TrafficAnalyticsConfigurationProperties].
  /// [enabled] Flag to enable/disable traffic analytics.
  /// [trafficAnalyticsInterval] The interval in minutes which would decide how frequently TA service should do flow analytics.
  /// [workspaceId] The resource guid of the attached workspace.
  /// [workspaceRegion] The location of the attached workspace.
  /// [workspaceResourceId] Resource Id of the attached workspace.
  TrafficAnalyticsConfigurationProperties({
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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      trafficAnalyticsInterval: map['trafficAnalyticsInterval'] == null ? null : map['trafficAnalyticsInterval'] as int,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
      workspaceRegion: map['workspaceRegion'] == null ? null : map['workspaceRegion'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'] as String,
    );
  }
}

