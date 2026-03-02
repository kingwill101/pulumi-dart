// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkWatcherFlowLogTrafficAnalytics {
  /// Boolean flag to enable/disable traffic analytics.
  final pulumi.Input<bool> enabled;
  /// How frequently service should do flow analytics in minutes. Defaults to `60`.
  final pulumi.Input<int>? intervalInMinutes;
  /// The resource GUID of the attached workspace.
  final pulumi.Input<String> workspaceId;
  /// The location of the attached workspace.
  final pulumi.Input<String> workspaceRegion;
  /// The resource ID of the attached workspace.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [NetworkWatcherFlowLogTrafficAnalytics].
  /// [enabled] Boolean flag to enable/disable traffic analytics.
  /// [intervalInMinutes] How frequently service should do flow analytics in minutes. Defaults to `60`.
  /// [workspaceId] The resource GUID of the attached workspace.
  /// [workspaceRegion] The location of the attached workspace.
  /// [workspaceResourceId] The resource ID of the attached workspace.
  NetworkWatcherFlowLogTrafficAnalytics({
    required this.enabled,
    this.intervalInMinutes,
    required this.workspaceId,
    required this.workspaceRegion,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'intervalInMinutes': ?intervalInMinutes,
      'workspaceId': workspaceId,
      'workspaceRegion': workspaceRegion,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory NetworkWatcherFlowLogTrafficAnalytics.fromMap(Map<String, dynamic> map) {
    return NetworkWatcherFlowLogTrafficAnalytics(
      enabled: (map['enabled'] as bool).input(),
      intervalInMinutes: map['intervalInMinutes'] == null ? null : (map['intervalInMinutes'] as int).input(),
      workspaceId: (map['workspaceId'] as String).input(),
      workspaceRegion: (map['workspaceRegion'] as String).input(),
      workspaceResourceId: (map['workspaceResourceId'] as String).input(),
    );
  }
}

